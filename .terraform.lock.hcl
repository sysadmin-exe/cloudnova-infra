# This file is maintained automatically by "tofu init".
# Manual edits may be lost in future updates.

provider "registry.opentofu.org/gavinbunney/kubectl" {
  version     = "1.19.0"
  constraints = "~> 1.19"
  hashes = [
    "h1:quymfa/OKEfWI5JXFEwGbUY2aAy0vet3rA9JWJam+3k=",
    "zh:1dec8766336ac5b00b3d8f62e3fff6390f5f60699c9299920fc9861a76f00c71",
    "zh:43f101b56b58d7fead6a511728b4e09f7c41dc2e3963f59cf1c146c4767c6cb7",
    "zh:4c4fbaa44f60e722f25cc05ee11dfaec282893c5c0ffa27bc88c382dbfbaa35c",
    "zh:51dd23238b7b677b8a1abbfcc7deec53ffa5ec79e58e3b54d6be334d3d01bc0e",
    "zh:5afc2ebc75b9d708730dbabdc8f94dd559d7f2fc5a31c5101358bd8d016916ba",
    "zh:6be6e72d4663776390a82a37e34f7359f726d0120df622f4a2b46619338a168e",
    "zh:72642d5fcf1e3febb6e5d4ae7b592bb9ff3cb220af041dbda893588e4bf30c0c",
    "zh:9b12af85486a96aedd8d7984b0ff811a4b42e3d88dad1a3fb4c0b580d04fa425",
    "zh:a1da03e3239867b35812ee031a1060fed6e8d8e458e2eaca48b5dd51b35f56f7",
    "zh:b98b6a6728fe277fcd133bdfa7237bd733eae233f09653523f14460f608f8ba2",
    "zh:bb8b071d0437f4767695c6158a3cb70df9f52e377c67019971d888b99147511f",
    "zh:dc89ce4b63bfef708ec29c17e85ad0232a1794336dc54dd88c3ba0b77e764f71",
    "zh:dd7dd18f1f8218c6cd19592288fde32dccc743cde05b9feeb2883f37c2ff4b4e",
    "zh:ec4bd5ab3872dedb39fe528319b4bba609306e12ee90971495f109e142d66310",
    "zh:f610ead42f724c82f5463e0e71fa735a11ffb6101880665d93f48b4a67b9ad82",
  ]
}

provider "registry.opentofu.org/hashicorp/aws" {
  version     = "5.97.0"
  constraints = ">= 4.0.0, >= 4.33.0, >= 5.40.0, >= 5.79.0, ~> 5.95"
  hashes = [
    "h1:wQQOWfS0ADOnuolmBBliS6YzKRYVDkBS5juqG1FJLNY=",
    "zh:0399db801d5847d3f1aae8528b0ec7e9342431f2d42a4f06841d43c9479e45ac",
    "zh:2a1fdb04d30340c8e5fa06f0c7e97feaa3f2f76bc65175471170b42a7f0ebab4",
    "zh:3dec38efcdef0e4dfb93998b87ca7a1bfe528f0fa825f99b113c816424c311ba",
    "zh:42c9da03e3f3e42cbb19278932af093d27487bc7fc75c689d0bbddf5c9da1786",
    "zh:821fc83ffebc81e51be4c70ab6ae42c32821ac0f41b81016908891663afa9476",
    "zh:8d790c719e467a4b5c84f5d35a1702c8c27b052cc88db12e37d097781d50b077",
    "zh:e9a0e61b8e576f5c38ffca3a16e523ef295f57da1d29fab5773ce66bbbfebcc5",
    "zh:ec49b0ef15033912aa9919122163cd0e06bb3a7463380f4c1fd41704a9964170",
    "zh:f123de397ce8fb792d8181250e85a79b5446ac392a7470d7597b7d7319d4dbbf",
    "zh:fe1ea027408453dac877b8ef5d325d6fba82250960c90ad42fcb90da97588863",
  ]
}

provider "registry.opentofu.org/hashicorp/cloudinit" {
  version     = "2.3.7"
  constraints = ">= 2.0.0"
  hashes = [
    "h1:El6cBCCiCPGwJsSSN0Z+EUWatjI45hie+kIDnTegV9A=",
    "zh:2d48b8452eae9bac2e62273e8f535f73694d8cb05ea38f4b27ee735dcc38eed4",
    "zh:4add11b87e48d0e6ecd19243a06ecfc42fc07d0a3748fe568c2971d5f4767486",
    "zh:4c9c4e3319cf3328595ea2d68eba7c604325fbcba38cd443e39e982b0b4e29f2",
    "zh:503dd83a05b0421ecbcb140d5fdbe3a6b82f163495a82587a1390cf66d7a27be",
    "zh:7dd34de7e68036dbbb70c249968a2a10bccba1cb92d3b4dccbc0eb65a3fc58ea",
    "zh:a4d7b4480d38446b8da96ce4ecbc2e5a081c4ddc3da2bad97d7b228821b77895",
    "zh:bdec6329c3d2d5f034080d9cd6f9a15a2c052faacd716f981e247b48e6845c01",
    "zh:e1519544ae3f67196d144e18c21ad681dc29da3133a537ffdd5c2c6271b8db0c",
    "zh:e58cd6b05ed51a6fa072e5de2208ba36a58557c3fb414d50c42b3d40a11366b7",
    "zh:fafc4a49c297516f2a40490f9a7e6d2b437d77a94330797d4eead178c987ccb5",
  ]
}

provider "registry.opentofu.org/hashicorp/helm" {
  version     = "2.17.0"
  constraints = "~> 2.17"
  hashes = [
    "h1:ShIag7wqd5Rs+zYpVMpjAh+T0ozr4XGYfSTKWqceQBY=",
    "zh:02690815e35131a42cb9851f63a3369c216af30ad093d05b39001d43da04b56b",
    "zh:27a62f12b29926387f4d71aeeee9f7ffa0ccb81a1b6066ee895716ad050d1b7a",
    "zh:2d0a5babfa73604b3fefc9dab9c87f91c77fce756c2e32b294e9f1290aed26c0",
    "zh:3976400ceba6dda4636e1d297e3097e1831de5628afa534a166de98a70d1dcbe",
    "zh:54440ef14f342b41d75c1aded7487bfcc3f76322b75894235b47b7e89ac4bfa4",
    "zh:6512e2ab9f2fa31cbb90d9249647b5c5798f62eb1215ec44da2cdaa24e38ad25",
    "zh:795f327ca0b8c5368af0ed03d5d4f6da7260692b4b3ca0bd004ed542e683464d",
    "zh:ba659e1d94f224bc3f1fd34cbb9d2663e3a8e734108e5a58eb49eda84b140978",
    "zh:c5c8575c4458835c2acbc3d1ed5570589b14baa2525d8fbd04295c097caf41eb",
    "zh:e0877a5dac3de138e61eefa26b2f5a13305a17259779465899880f70e11314e0",
  ]
}

provider "registry.opentofu.org/hashicorp/kubernetes" {
  version = "2.36.0"
  hashes = [
    "h1:O/JNwmUFXK8wQ6OEL5lH7akEYt0K5B1ClLpW0/1DvZE=",
    "zh:15e42a6f8c6be77e0266edfb3765065c01e8fbcc8d75c794f1442f39cd9e6cfb",
    "zh:2387195e7c80bc3ba93162c5c755482828b309a275d170e0c329145894dc6cb2",
    "zh:27775d6f0b53a76c3f91689e553461a10ab2e07f7066ccb7cc0dce2cb8abf72f",
    "zh:28e77e1dfafe5881bc28bec76e22735e4be2dcde468a8f3f08f32a52c6f1938e",
    "zh:89b6571d33b6607499683b7b1fdfb95576ed08ab80539537c5460de1455df424",
    "zh:91cdad0f3a5cb4a82669703f6f017b07e434748cff9b8991432043c733ae50a7",
    "zh:a566611bc563c4e8ac843f6b6b868cf8dce2eccb908bd7605040b553983dc5e3",
    "zh:d4efb26732e5fbd4e6a5e4c10eea62628d669c9c76e52c6485417c1e0a60fd99",
    "zh:e87d8edc93920b75b88e7fb8d1a7941f2b7facc89931b72e4c74fcf137baee91",
    "zh:f173c9c66edb046715db10adce1d603fe989a3634b26bb81d556de3de548bd94",
  ]
}

provider "registry.opentofu.org/hashicorp/null" {
  version     = "3.2.4"
  constraints = ">= 3.0.0"
  hashes = [
    "h1:i+WKhUHL2REY5EGmiHjfUljJB8UKZ9QdhdM5uTeUhC4=",
    "zh:1769783386610bed8bb1e861a119fe25058be41895e3996d9216dd6bb8a7aee3",
    "zh:32c62a9387ad0b861b5262b41c5e9ed6e940eda729c2a0e58100e6629af27ddb",
    "zh:339bf8c2f9733fce068eb6d5612701144c752425cebeafab36563a16be460fb2",
    "zh:36731f23343aee12a7e078067a98644c0126714c4fe9ac930eecb0f2361788c4",
    "zh:3d106c7e32a929e2843f732625a582e562ff09120021e510a51a6f5d01175b8d",
    "zh:74bcb3567708171ad83b234b92c9d63ab441ef882b770b0210c2b14fdbe3b1b6",
    "zh:90b55bdbffa35df9204282251059e62c178b0ac7035958b93a647839643c0072",
    "zh:ae24c0e5adc692b8f94cb23a000f91a316070fdc19418578dcf2134ff57cf447",
    "zh:b5c10d4ad860c4c21273203d1de6d2f0286845edf1c64319fa2362df526b5f58",
    "zh:e05bbd88e82e1d6234988c85db62fd66f11502645838fff594a2ec25352ecd80",
  ]
}

provider "registry.opentofu.org/hashicorp/time" {
  version     = "0.13.1"
  constraints = ">= 0.9.0"
  hashes = [
    "h1:3X1jTAlLJV6G9AylC+BgX7WrKFcZYHqA+Z4JwB+v7as=",
    "zh:10f32af8b544a039f19abd546e345d056a55cb7bdd69d5bbd7322cbc86883848",
    "zh:35dd5beb34a9f73de8d0fed332814c69acae69397c9c065ce63ccd8315442bef",
    "zh:56545d1dd5f2e7262e0c0c124264974229ec9cc234d0d7a0e36e14b869590f4a",
    "zh:8d7259c3f819fd3470ff933c904b6a549502a8351feb1b5c040a4560decaf7e0",
    "zh:a40f26878826b142e26fe193f7e3e14fc97f615cd6af140e88ce5bc25f3fcf50",
    "zh:b2e82f25fecff172a9a9e24ea37d37e4fc630ee9245617cb40b10e66a6b979c8",
    "zh:d4b699850a40ed07ef83c6b827605d24050b2732646ee017bda278e4ddf01c91",
    "zh:e4e6a5e5614b6a54557400aabb748ebd57e947cdbd21ad1c7602c51368a80559",
    "zh:eb78fb97bca22931e730487a20a90f5a6221ddfb3138aaf070737ea2b7c9c885",
    "zh:faba366a1352ee679bba2a5b09c073c6854721db94b191d49b620b60946a065f",
  ]
}

provider "registry.opentofu.org/hashicorp/tls" {
  version     = "4.1.0"
  constraints = ">= 3.0.0"
  hashes = [
    "h1:yNZuPWUgw6Ik2huf9lhsuCGONWo2rsY1MfeceT0BQpw=",
    "zh:187a99f0d236fd92da224e2f026c4ca8f1dcbf2b5cddc8e6896801bacfab0d73",
    "zh:61a32a01cc46f382014dcf7aff5bcac61fe97bd69d3ccb51c801e9437ecdb9ce",
    "zh:683ba18baa2cc336ff83f061b5e4569e2cd7c4a097b53a2d80bb0a26be2fc59a",
    "zh:85c7640ea13dcf5ae5f7f3abbf2f21e4b93ce7f333ffee5b4a6acd6b5fe71223",
    "zh:882f2c5214fd6d280a500acfd560925a71030ef70e10d11fa2b94815b58ae9b6",
    "zh:97cb5e0b81b8687870a6b8a16e9a9cfe546e2fdb7534bdd8302eda0d66393f78",
    "zh:c0a0110b15ce45140036fe5bf5a44cb822c2f55b30ff2770faf37d7c3cae3b5e",
    "zh:d98c1c63fd0c76704fd7be38c316c305a2c95f3215330f2fb1e6b0b7081bf8e9",
    "zh:e703a7adf220ac436f8ebfd06529de865b965fcfc461c7ef7b71afa0de04c8e9",
    "zh:e93e241150cd438a0708679cb4aa7976742fde02f4c1725cfdefc405c4eeca1a",
  ]
}
