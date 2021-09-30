# Provide an API key. Docs for creating one at
# https://cloud.ibm.com/docs/account?topic=account-userapikey#create_user_key.
ibmcloud_api_key="LH3vjzvmQlCGXMvuVTpeKZqhG3eS5MSYMPtFnSYB8lB_"


# All the resources created by the script will use this prefix. Recommend you
# set to 'instana-' or similar (perhaps including your initials if you're
# on a shared account), e.g. you might use 'abc-instana'.
resource_prefix="dk-instana"

# Instana Tokens
sales_id="pgABSBp_SnqIr5oMD68HoQ"
agent_key="qUMhYJxjSv6uZh2SyqTEnw"

# IBM Cloud region, zone, vpc, subnet and resource-group name where Instana VM needs to be created.
region="us-south"
zone="us-south-1"
vpc_name="instana-vpc"
subnet_name="sn-20210921-01"
resource_group_name="instana-test"

# SSH-Key pair used for Instana VM
ssh_instana_public_key_file="ssh-instana.pub"
ssh_instana_private_key_file="ssh-instana"