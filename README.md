# terraform-gce
terraform for Google compute engine

## How to use

```
$ git clone https://github.com/blauerberg/terraform-gce.git
$ cd terraform-gce
$ cp terraform.tfvars.example terraform.tfvars

# set your credential of GCP
$ sed -i -e "s/YOUR_CREDENTIAL/~\/my_credentail.json/" terraform.tfvars

# set your profile name of GCP
$ sed -i -e "s/YOUR_PROJECT/my_project/" terraform.tfvars

# set your ssh account name
$ sed -i -e "s/YOUR_SSH_USER/terraform/" terraform.tfvars

# set your public key path
$ sed -i -e "s/YOUR_SSH_PUBLIC_KEY_PATH/~\/.ssh/id_rsa.pub/" terraform.tfvars

$ terraform init
$ terraform plan
$ rerraform apply

You will show the external ip of you've created by terraform.
Enjoy!
```
