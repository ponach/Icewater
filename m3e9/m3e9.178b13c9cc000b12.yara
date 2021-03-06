
rule m3e9_178b13c9cc000b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3e9.178b13c9cc000b12"
     cluster="m3e9.178b13c9cc000b12"
     cluster_size="40"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171111"
     license = "RIL-1.0 [Rick's Internet License] "
     family="virut virtob virux"
     md5_hashes="['00afe27b342e2c78dc40b538bf58f1d0','0a392f274de579580822dca7e3443026','d8f46a9ae4a765713931dcc858a2b258']"

   strings:
      $hex_string = { 0101012a9589414948242b2312151b300101013a947a3e5d4e3f4035110e14380101013b91584c5c5b46474517131f2e010101438f55546c5a4d534b1d1e282e }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
