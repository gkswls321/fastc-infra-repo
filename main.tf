module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0eb57e3995850826b"

  private_subnets = ["subnet-0a881edf52c80a9f3", "subnet-067a763673b1498cb"]
  public_subnets  = ["subnet-0a653896d4930af7c", "subnet-0d654abd1fa834b8d"]
}