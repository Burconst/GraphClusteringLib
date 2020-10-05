using System.Collections.Generic;
using NUnit.Framework;
using QuikGraph;

namespace GraphClustering.UnitTests
{
    [TestFixture]
    public class TCommunity
    {
        private Dictionary<string,IEdgeListAndIncidenceGraph<int, IEdge<int>>> _graphDict;

        [SetUp]
        public void SetUp() => _graphDict = UtilityFunctions.GetGraphsDict();

        [Test]
        public void Community_Constructor_ReturnTrue()
        {
            foreach(var graph in _graphDict.Values)
            {
                foreach(var vertex in graph.Vertices) 
                {
                    var community = new Community<int>(vertex);
                    Assert.IsTrue(community.GetVertexCount() == 1,"The community must consist of one vertex.");
                    break;
                }
            }

            bool wasExeption = false;
            try 
            {
                var community = new Community<int>(null);
            }
            catch 
            {
                wasExeption = true;
            }
            Assert.IsTrue(wasExeption, "The constructor must throw an exceptions if the constructor parameter is null.");
        }

        [Test]
        public void Community_Constructor_ReturnFalse()
        {
            var community1 = new Community<int>();
            Assert.IsFalse(community1.GetVertexCount() > 0,"The community must be empty.");
        }

        [Test]
        public void Community_ConstructorWithRange_ReturnTrue()
        {
            foreach(var graph in _graphDict.Values) 
            {
                var community = new Community<int>(graph.Vertices);
                Assert.IsTrue(community.GetVertexCount() == graph.VertexCount,"The community must be the same size as the graph.");
            }
        }

        [Test]
        public void Community_ConstructorWithRange_ReturnFalse() 
        {
            // Value type testing
            var verticesInt = new List<int>{ 1, 2, 3 };
            var communityInt = new Community<int>(verticesInt);
            verticesInt.Add(4);
            Assert.IsFalse(verticesInt.Count == communityInt.GetVertexCount(),"The community must be independent of the collection that it was created with.");
            verticesInt.Clear();
            Assert.IsFalse(verticesInt.Count == communityInt.GetVertexCount(),"The community must be independent of the collection that it was created with.");
            
            // Reference type Testing
            var verticesString = new List<string> { "one", "two", "three"}; 
            var communityString = new Community<string>(verticesString);
            verticesString.Clear();
            Assert.IsFalse(verticesInt.Count == communityString.GetVertexCount(),"The community must be independent of the collection that it was created with.");
        }

        [Test]
        public void Community_Contains_ReturnTrue() 
        {
            foreach(var graph in _graphDict) 
            {
                foreach(var vertex in graph.Value.Vertices) 
                {
                    var community = new Community<int>(vertex);
                    Assert.IsTrue(community.Contains(vertex),"The community must contain vertex that it was created with.");
                }
            }
            var verticesInt = new List<int>{ 1, 2, 3 };
            var communityInt = new Community<int>(verticesInt);
            Assert.IsTrue(communityInt.Contains(verticesInt[2]),"The community must contain collection that it was created with.");
        }

        [Test]
        public void Community_Contains_ReturnFalse() 
        {
            var verticesInt = new List<int>{ 1, 2, 3 };
            var communityInt = new Community<int>(verticesInt);
            verticesInt.Add(4);
            Assert.IsFalse(communityInt.Contains(verticesInt[3]),"The community must be independent of the collection that it was created with.");
            var verticesString = new List<string> { "one", "two", "three"}; 
            var communityString = new Community<string>(verticesString);
            var one = new string("one");
            Assert.IsFalse(communityString.Contains(one),"The contains method should look for an object with the same reference.");
        } 

        [Test]
        public void Community_ContainsRange_ReturnTrue() 
        {
            foreach(var graph in _graphDict.Values) 
            {
                var community = new Community<int>(graph.Vertices);
                Assert.IsTrue(community.Contains(graph.Vertices),"The community must contain collection that it was created with.");
            }
        }

        [Test]
        public void Community_Add_ReturnTrue() 
        {
            foreach (var graph in _graphDict)
            {
                var community = new Community<int>();
                var vertList = new List<int>();
                int i = 0;
                foreach(var vertex in graph.Value.Vertices) 
                {
                    if (i%2 == 0) 
                    {
                        community.Add(vertex);
                        vertList.Add(vertex);
                    }
                    i++;
                }
                Assert.IsTrue(community.Contains(vertList),"The community must contain added vertices.");
            }
        }

        [Test]
        public void Community_AddRange_ReturnTrue()
        {
            foreach (var graph in _graphDict)
            {
                var community = new Community<int>();
                var vertList = new List<int>();
                int i = 0;
                foreach(var vertex in graph.Value.Vertices) 
                {
                    if (i%2 == 0) 
                    {
                        vertList.Add(vertex);
                    }
                    i++;
                }
                community.Add(vertList);
                Assert.IsTrue(community.Contains(vertList),"The community must contain added vertices.");
            }
        }

        [Test]
        public void Community_Remove_ReturnTrue() 
        {
            foreach(var graph in _graphDict)
            {
                var community = new Community<int>(graph.Value.Vertices);
                foreach(var vertex in graph.Value.Vertices) 
                {
                    bool answer = community.Remove(vertex);
                    Assert.IsTrue((answer == true )&& !community.Contains(vertex),"The community mustn't contain removed vertices.");
                }
            }
        }
        
        [Test]
         public void Community_RemoveRange_ReturnTrue() 
        {
            foreach(var graph in _graphDict)
            {
                var community = new Community<int>(graph.Value.Vertices);
                var vertList = new List<int>();
                int i = 0;
                foreach(var vertex in graph.Value.Vertices) 
                {
                    if (i%2 == 0) 
                    {
                        vertList.Add(vertex);
                    }
                    i++;
                }
                bool answer = community.Remove(vertList);
                Assert.IsTrue(answer == true && !community.Contains(vertList),"The community mustn't contain removed vertices.");
            }
        }

        [Test]
        public void Community_Clear_ReturnTrue() 
        {
            foreach(var graph in _graphDict)
            {
                var community = new Community<int>();
                var vertList = new List<int>();
                int i = 0;
                foreach(var vertex in graph.Value.Vertices) 
                {
                    if (i%2 == 0) 
                    {
                        vertList.Add(vertex);
                    }
                    i++;
                }
                community.Clear();
                Assert.IsTrue(community.GetVertexCount() == 0,"The cleared community must be empty.");
            }
        }

        [Test]
        public void Community_GetEnumerator_ReturnTrue() 
        {
            foreach(var graph in _graphDict)
            {
                var community = new Community<int>(graph.Value.Vertices);
                bool enumeratorWasReceived = false;
                foreach(var vertex in community)
                {
                    enumeratorWasReceived = true;
                    break;
                }
                Assert.IsTrue((graph.Value.VertexCount > 0) && enumeratorWasReceived,"You must be able to get enumerator of a community.");
            }
        }

    }
    
}