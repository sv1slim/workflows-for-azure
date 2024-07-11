# Logint to Azure and set your default subscribtion
az login
az account show --output table
az account set --subscription "Visual Studio Enterprise Subscription"

# Create a service principal and paste the IDs into ubuntu.json file 
az ad sp create-for-rbac --role Contributor --scopes /subscriptions/f7806be4-19fa-45cf-b6e7-636c8ebd49d9 --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"
az role assignment list --scope /subscriptions/"f7806be4-19fa-45cf-b6e7-636c8ebd49d9" --role "Contributor"
az role assignment list --assignee "3dbd575d-64a2-4775-9a2c-faedd0ca84fe" # --assignee = "{client_id}}""

# Obtain your Azure subscription ID
az account show --query "{ subscription_id: id }"

