module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.23"
  vpc_id = "vpc-089c8039c0f5fab89"

  private_subnets = ["subnet-0e542430fb1eadb8a", "subnet-0adcba37df1bcd360"]
  public_subnets  = ["subnet-0518fb970d9aef261", "subnet-09c243ee5a9b52bf2"]
}