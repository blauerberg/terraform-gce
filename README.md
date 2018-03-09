# terraform-gce
terraform for Google compute engine

## How to use

```
$ git clone https://github.com/blauerberg/terraform-gce.git
$ cd terraform-gce
$ cp terraform.tfvar.example terraform.tfvar
$ sed -i -e "s/YOUR_CREDENTIAL/~\/my_credentail.json/" # set your credential of GCP
$ sed -i -e "s/YOUR_PROJECT/my_project/" # set your proface name of GCP
$ terraform init
$ terraform plan
$ rerraform apply

You will show the external ip of you've created by terraform.
Enjoy!
```
