namespace GoColis.Shipping.Api.Authentication.Handlers;

/// <summary>
/// Specifies a collection of permissions in <see cref="Endpoint.Metadata"/>.
/// </summary>
/// <remarks>
/// The OpenAPI specification supports a permissions classification to categorize operations
/// into related groups. These permissions are typically included in the generated specification
/// and are typically used to group operations by permissions in the UI.
/// </remarks>
[AttributeUsage(AttributeTargets.Method | AttributeTargets.Delegate | AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
public sealed class PermissionsAttribute : Attribute
{
    /// <summary>
    /// Initializes an instance of the <see cref="PermissionsAttribute"/>.
    /// </summary>
    /// <param name="permissions">The permissions associated with the endpoint.</param>
    public PermissionsAttribute(params string[] permissions)
    {
        Permissions = new List<string>(permissions);
    }

    /// <summary>
    /// Gets the collection of permissions associated with the endpoint.
    /// </summary>
    public IReadOnlyList<string> Permissions { get; }
}
