# Grant an Azure AD app role to a user (example for service principal)
# Requires AzureADPreview module and appRoleId, ServicePrincipalObjectId and UserObjectId known
New-AzureADUserAppRoleAssignment -ObjectId <UserObjectId> -PrincipalId <UserObjectId> -ResourceId <ServicePrincipalObjectId> -Id <AppRoleId>
