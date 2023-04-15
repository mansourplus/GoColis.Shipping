namespace GoColis.Shipping.Application.Common;

public class PagedQueryResponse<T>
{
    public int TotalRecords { get; set; }
    public T Data { get; set; }
    public PagedQueryResponse(T data)
    {
        this.Data = data;
    }

    public PagedQueryResponse()
    {
    }
}