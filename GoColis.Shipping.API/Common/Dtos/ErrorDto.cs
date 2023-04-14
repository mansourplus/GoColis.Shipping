using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Api.Common.Dtos
{
    public record class ErrorDto
    {
        private ErrorDto(string message)
        {
            Message = message;
        }

        /// <summary>
        /// Error description
        /// </summary>
        public string Message { get; private set; }

        public static ErrorDto ToDto(Error error) => new ErrorDto(error.Description);
    }
}
