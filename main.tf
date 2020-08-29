module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project="ak-jx-prj"
  cluster_name="ak-jx-cluster"
}

output "jx_requirements"{
  value=module.jx.jx_requirements
}

terraform{
    backend "gcs"{
        bucket="ak-jx-prj-tf-stfls"
        prefix="terraform/state"
    }
}

