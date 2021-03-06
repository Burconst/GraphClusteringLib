namespace GraphClustering.UnitTests.Builders
{
    internal static class CommunityBuilder
    {
        public static ICommunity<TVertex> Create<TVertex>() 
        {
            return new Community<TVertex>();
        }
        public static ICommunity<TVertex> Create<TVertex>(TVertex vertex) 
        {
            return new Community<TVertex>(vertex);
        }
        public static ICommunity<TVertex> Create<TVertex>(System.Collections.Generic.IEnumerable<TVertex> vertices) 
        {
            return new Community<TVertex>(vertices);
        }
    }
}