const char* const snapshot_test_abi = R"=====(
{
  "version": "bcio::abi/1.0",
  "types": [],
  "structs": [{
      "name": "increment",
      "base": "",
      "fields": [
        {"name": "value", "type": "uint32" }
      ]
   }
  ],
  "actions": [{
      "name": "increment",
      "type": "increment",
      "ricaridian_contract": ""
    }
  ],
  "tables": [],
  "ricardian_clauses": [],
  "abi_extensions": []
}
)=====";