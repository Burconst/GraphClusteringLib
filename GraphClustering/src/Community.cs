using System.Collections.Generic;

namespace GraphClustering
{
    public sealed class Community<TVertex> : ICommunity<TVertex>
    {
        private readonly List<TVertex> _vertices;

        public IEnumerable<TVertex> Vertices => _vertices;

        public Community()
        {
            _vertices = new List<TVertex>();
        }
        public Community(TVertex vertex) : this(vertex,null)
        {
        }

        public Community(TVertex vertex, int? id) 
        {
            if (vertex == null) 
            {
                throw new System.ArgumentNullException("The vertex cannot be null.");
            }
            _vertices = new List<TVertex> { vertex };
        }

        public Community(IEnumerable<TVertex> vertices) 
        {
            if (vertices == null) 
            {
                throw new System.ArgumentNullException("The vertices must be not null.");
            }
            if (_vertices == null) 
            {
                _vertices = new List<TVertex>();
            }
            _vertices.AddRange(vertices);
        }

        public int GetVertexCount() => _vertices.Count;

        public bool Add(TVertex vertex)
        {
            if(Contains(vertex)) 
            {
                return false;
            }
            _vertices.Add(vertex);
            return true;    
        } 

        public bool Add(IEnumerable<TVertex> vertices)
        {
            if (Contains(vertices)) 
            {
                return false;
            }
            _vertices.AddRange(vertices);
            return true;
        }

        public bool Remove(TVertex vertex) => _vertices.Remove(vertex);

        public bool Remove(IEnumerable<TVertex> vertices) 
        {
            bool allRemoved = true;
            foreach(var vertex in vertices) 
            {
                allRemoved = Remove(vertex)? allRemoved : false;
            }
            return allRemoved;
        }

        public bool Contains(TVertex vertex) 
        {
            if(vertex.GetType().IsValueType) 
            {
                return _vertices.Contains(vertex);
            }

            foreach(var _vertex in _vertices) 
            {
                if (object.ReferenceEquals(_vertex,vertex))
                {
                    return true;
                }
            }
           return false;
        }

        public bool Contains(IEnumerable<TVertex> vertices)
        {
            bool contains = true;
            foreach (var vertex in vertices) 
            {
                if(!Contains(vertex)) 
                {
                    contains = false;
                }
            }
            return contains;
        }

        public void Clear() => _vertices.Clear();

        public IEnumerator<TVertex> GetEnumerator() =>  _vertices.GetEnumerator();

        public override string ToString()
        {
            var stringView = new System.Text.StringBuilder();
            foreach(var vertex in Vertices) 
            {
                stringView.Append($"{vertex.ToString()} ");
            }
            return stringView.ToString();
        }

    }

}

