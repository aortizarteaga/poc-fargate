

module "ecs-fargate" {
    source          =   "../modules/ecs-fargate"

    app_name        =   var.app_name 
    ecs_cluster_arn =   var.ecs_cluster_arn
    desired_count   =   var.desired_count

    # Network configuration block
    public_subnets  =   var.public_subnets_ids
    private_subnets =   var.private_subnets_ids
    security_groups =   var.ecs_security_groups    
}
