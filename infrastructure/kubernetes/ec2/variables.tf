    variable "instance_names" {
      default ={
        master1 = { name = "control-plane-1", type = "t2.medium" }
        master2 = { name = "control-plane-2", type = "t2.medium" }
        worker1 = { name = "worker-1", type = "t2.medium" }
        worker2 = { name = "worker-2", type = "t2.medium" }
      }
      type = map(object({
        name = string
        type = string
      }))
    }

variable "security_group_ids" {
  type = list(string)
  default = [ "sg-004b331539657e66f" ]
}