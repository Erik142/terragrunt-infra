# This file is maintained automatically by "tofu init".
# Manual edits may be lost in future updates.

provider "registry.opentofu.org/fluxcd/flux" {
  version     = "1.3.0"
  constraints = ">= 1.2.3"
  hashes = [
    "h1:l7fZLlZKIBrlP1ayvqdecUrkfs/Aqo8iXAIeMHPsqBM=",
    "zh:3cd796472b0b3125ae7cd2097e68e9fa2f9abbef8f629326a9138ef9a4607ec3",
    "zh:3efe1aba8bec2dbacd90877245bbdca43455c19883f1cef0c3bc0ed80de399ea",
    "zh:48da143b7f2225a5f0e809ce2918578a8ffac043c72e2f49c7077b6c922b4361",
    "zh:49e2b02a59d70c62ed246760b534b5eca910a0652e2709a9c4889341d84f3cbd",
    "zh:5b1a633bb00a9054d9110775221a3d10a582a1a7d19efe3dc27022d1d7ffd7e0",
    "zh:5e379ae01d86d9ad4db256549d9f0b0752f4fb8b9c5bdd9c1fb499d82bb57aa3",
    "zh:626296b4fa6674d9daab2e274b61f8c3c11e89d315480ec750b06d9addee5d4e",
    "zh:63fbfe3eff24bdb5bb7cb1a690f5baea54945d3bb2b221d4f01f36faa92ad6ef",
    "zh:849b5edbdf4a36ab63e175c4b99866cb691e03c4a6a0749cc8781ccf6d8090e2",
    "zh:a506d18d692575523103c59b9d2ab5b2373580e998ca28bd9665b98e2709126c",
    "zh:a5d1e2126e9ed60cb5968ac7ceba3d423a817eecbefc13d5f144557987ff8cf9",
    "zh:c7618ea66e01138a4e197fc3342f8948e73513b8eb90ad6c2c5e745f40b442b8",
    "zh:e281ce8b034a925f10f7beb2dbc59795a03cf06527be2bba4b432b7a8cd1c8b9",
    "zh:ecb7908d82879a1914f4cbdd54787ba1c3e08f43de8d503b77e2245cb5570294",
  ]
}

provider "registry.opentofu.org/hashicorp/kubernetes" {
  version     = "2.32.0"
  constraints = ">= 2.25.2"
  hashes = [
    "h1:eQbVYFjsq9QjAeYvmRAXy7EOjvY8MO7XFV1vCsDD6ds=",
    "zh:06d586c8fcd3ab8fe7f3ac99142ba48b9efbff8bebe05c52b3c7997f83146200",
    "zh:12ce862493717118a6bf68328448d09023a60344da25633e124423cdd734263e",
    "zh:33ee1cda5db58fd26576ba6be715282af30e04d25b38fd6752810fd206bc6422",
    "zh:8f4e13c726a5fb84244eff7740b20678e7fb2d5df6ebc759101d4c58fb069112",
    "zh:8fe15d350b5a018f535a93fa054bf4d05377a69f3b1e5cabe8c73d059a4b70cb",
    "zh:953fc8c8a92ff0defafd22ee0aec12d483d7b80685de6838e513d4de7170a651",
    "zh:a1ad6197105f9cda73c39f3b69dd688ec22708c736de05c03516561a88f4bbfc",
    "zh:c1d60898c269f42ece0b3672901001ba26338c865f83a39b116c0d6c0cd8dbc1",
    "zh:d26fcff2fda9421d9129fd407696481ecd2714ae3316e81ff977e2e40de068e5",
    "zh:dc616b73095755245f211af0989bfcf2f76b43196bf7f8982183e4e3b1c3f6f6",
  ]
}

provider "registry.opentofu.org/hashicorp/tls" {
  version = "4.0.6"
  hashes = [
    "h1:0oXaBUFJ5bA0ED7OCajAOa9YSGTTpe8FyUFJP+zO6A4=",
    "zh:4b53b372767e5068d9bbfc89199201c1ae4283dde2f0c301974f8abb4215791f",
    "zh:5b4c308bd074c6d0bd560220e6ee10a9859ca9a1f29a59367b0477a740ff265e",
    "zh:674dd6bc85597677e160ee601d88b21c5a974759a658769812d2904bd94bc042",
    "zh:6ccc1c448349b56677ba66112aec7e0a58eb827f66209ca5f4077b81cce240fb",
    "zh:8aa6e13a5d722b74230937ea21e8b4994e53340d95b5691cf6cf3518b9f38e6e",
    "zh:8b27e55e4c7fa887774860113b95c8f7f68804b002fa47f0eb8e3a485997287e",
    "zh:a430b5a3e8753d8f61784de49e538ac4abed19fb665fccd8a10b55402fe9f076",
    "zh:b07c978c335ae9fc12f9c221629610775e4ae36691ed4e7ba258d275dd58a243",
    "zh:bbec8cb1efc84ee3026c793956a4a4cd0ece20b89d2d4f7d954c68e7f6d596d0",
    "zh:e684e247424188dc3b500a543b1a8046d1c0ec08c2a90aedca0c4f6bb56bedbd",
  ]
}

provider "registry.opentofu.org/integrations/github" {
  version     = "6.3.0"
  constraints = ">= 5.18.0"
  hashes = [
    "h1:AG//wDT67eInhTk+SQdDz5o8R8YIIBrZGz7C9TXKDOw=",
    "zh:04fe3b820fe8c247b98b9d6810b8bb84d3e8ac08054faf450c42489815ef4bfa",
    "zh:24096b2d16208d1411a58bdb8df8cd9f0558fb9054ffeb95c4e7e90a9a34f976",
    "zh:2b27332adf8d08fbdc08b5f55e87691bce02c311219e6deb39c08753bd93db6d",
    "zh:335dd6c2d50fcdce2ef0cc194465fdf9df1f5fdecc805804c78df30a4eb2e11e",
    "zh:383a6879565969dbdf5405b651cd870c09c615dbd3df2554e5574d39d161c98c",
    "zh:4903038a6bc605f372e1569695db4a2e2862e1fc6cf4faf9e13c5f8f4fa2ed94",
    "zh:4cc4dffbee8b28102d38abe855b7440d4f4226261b43fda2ec289b48c3de1537",
    "zh:57c30c6fe0b64fa86906700ceb1691562b62f2b1ef0404952aeb4092acb6acb3",
    "zh:7bf518396fb00e4f55c406f2ffb5583b43278682a92f0864a0c47e3a74627bbb",
    "zh:93c2c5cb90f74ad3c0874b7f7d8a866f28a852f0eda736c6aef8ce65d4061f4d",
    "zh:9562a82a6193a2db110fb34d1aceeedb27c0a640058dce9c31b37b17eeb5f4e7",
    "zh:ac97f2d111703a219f27fcbf5e89460ea98f9168badcc0913c8b214a37f76814",
    "zh:c882af4d33b761ec198cedac212ab1c114d97540119dc97daca38021ab3edd0a",
    "zh:c9ffd0a37f07a93af02a1caa90bfbea27a952d3e5badf4aab866ec71cdb184a3",
    "zh:fbd1fee2c9df3aa19cf8851ce134dea6e45ea01cb85695c1726670c285797e25",
  ]
}
