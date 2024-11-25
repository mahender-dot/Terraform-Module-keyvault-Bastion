module "mrg" {
    source = "../QA_env/rg"
}

module "mvnet" {
    source = "../QA_env/vnet"
    depends_on = [ module.mrg ]
}

module "msub" {
    source = "../QA_env/subnet"
    depends_on = [ module.mvnet ]
}

module "mpip" {
    source = "../QA_env/public_ip"
    depends_on = [ module.mvnet , module.mrg ]
}

module "mnic" {
    source = "../QA_env/nic"
    depends_on = [ module.msub ]
}

module "mvm" {
    source = "../QA_env/vm"
    depends_on = [ module.mnic , module.msecret ]
}

module "mbastion" {
    source = "../QA_env/bastion"
    depends_on = [ module.msub , module.mpip ]
}

module "mkeyvault" {
    source = "../QA_env/keyvault"
    depends_on = [ module.mrg ]
}

module "msecret" {
    source = "../QA_env/secrets"
    depends_on = [ module.mkeyvault ]
}

