## WriteOn Contracts

```
Blog Token

https://lenscan.io/address/0x9cDD8990B7a9276541246227dbA49eD0234eE6b4


Factory Campaign

https://lenscan.io/address/0x0720ED0479a6B235ECAb2C3F38334198ADACce92


Campaign Manager

https://lenscan.io/address/0x941cBEe128011F49901A57A939589ADa93d26F7C

```

### Commands

Create Campaign

```
cast send --rpc-url https://rpc.lens.xyz 0x941cBEe128011F49901A57A939589ADa93d26F7C 'createCampaign(string,uint256,uint256,uint256)' <CAMPAIGN NAME> <START TIMESTAMP> <END TIMESTAMP> <REWARD AMOUNT> --private-key <CAMPAIGN_OWNER_PRIV_KEY>
```

Campaign Owner Deposit Reward

```
cast send --rpc-url https://rpc.lens.xyz 0x9cDD8990B7a9276541246227dbA49eD0234eE6b4 'approve(address,uint256)' <CAMPAIGN ADDRESS> <REWARD AMOUNT> --private-key <CAMPAIGN_OWNER_PRIV_KEY>

cast send --rpc-url https://rpc.lens.xyz <CAMPAIGN ADDRESS> 'depositReward()' --private-key <CAMPAIGN_OWNER_PRIV_KEY>
```

Add Contributor

```
cast send --rpc-url https://rpc.lens.xyz <CAMPAIGN ADDRESS> 'addContributors(address[],uint256[])' <CONTRIBUTOR ADDRESS> <CONTRIBUTOR SCORES> --private-key <CAMPAIGN_MANAGER_PRIV_KEY>
```

Contributor Withdraw Reward

```
cast send --rpc-url https://rpc.lens.xyz <CAMPAIGN ADDRESS> 'withdraw()' --private-key <CONTRIBUTOR_PRIV_KEY>
```
