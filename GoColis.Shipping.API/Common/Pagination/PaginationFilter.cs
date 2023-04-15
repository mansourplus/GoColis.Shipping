namespace GoColis.Shipping.Api.Common;

public class PaginationFilter
{
    public int PageNumber { get; set; }
    public int PageSize { get; set; }
    public PaginationFilter()
    {
        this.PageNumber = 1;
        this.PageSize = 10;
    }
    internal PaginationFilter(int pageNumber, int pageSize)
    {
        PageNumber = pageNumber < 1 ? 1 : pageNumber;
        pageSize = (pageSize < 1 ? 10 : pageSize);
        PageSize = pageSize > 10 ? 10 : pageSize;
    }
}
