# Logint to Azure and set your default subscribtion
az login
az account show --output table
az account set --subscription "Visual Studio Enterprise Subscription"

# Obtain your Azure subscription ID
az account show --query "{ subscription_id: id }"

# Create a service principal and with contributor access to the full subscribtion 
az ad sp create-for-rbac --name gitRepo-workflow-for-azure --role Contributor --scopes /subscriptions/f7806be4-19fa-45cf-b6e7-636c8ebd49d9 --query "{ client_id: appId, tenant_id: tenant }"

# Grant Federated Credentals to Github Repo: go to Azure Portal > MS Entra ID > Manage > App Registration > Owened Applications > Select created Service Provider > Manage > Certificates & Secrets > Federated Credentals > Add new Federated Credentials pemission.
# Go to your GitHub repo settings > Secrets & Variables > Actions >  and create new variables
# AZURE_CLIENT_ID
# AZURE_SUBSCRIPTION_ID
# AZURE_TENANT_ID


