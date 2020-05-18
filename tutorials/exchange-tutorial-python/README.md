The following steps must be taken for the example script to work.

0. Create wallet
0. Create account for bcio.token
0. Create account for scott
0. Create account for exchange
0. Set token contract on bcio.token
0. Create BC token
0. Issue initial tokens to scott

**Note**:
Deleting the `transactions.txt` file will prevent replay from working.


### Create wallet
`clbc wallet create`

### Create account steps
`clbc create key`

`clbc create key`

`clbc wallet import  --private-key <private key from step 1>`

`clbc wallet import  --private-key <private key from step 2>`

`clbc create account bcio <account_name> <public key from step 1> <public key from step 2>`

### Set contract steps
`clbc set contract bcio.token /contracts/bcio.token -p bcio.token@active`

### Create BC token steps
`clbc push action bcio.token create '{"issuer": "bcio.token", "maximum_supply": "100000.0000 BC", "can_freeze": 1, "can_recall": 1, "can_whitelist": 1}' -p bcio.token@active`

### Issue token steps
`clbc push action bcio.token issue '{"to": "scott", "quantity": "900.0000 BC", "memo": "testing"}' -p bcio.token@active`
