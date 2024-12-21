/**
 *Submitted for verification at sepolia.basescan.org on 2024-12-15
*/

//MUST REMOVE ALL THINGS FROM HEADING BEFORE MAINNET LAUNCH!!!!
//MUST REMOVE ALL THINGS FROM HEADING BEFORE MAINNET LAUNCH!!!!
//      Must taken out the 0xBitcoin mock ERC20 contract and put in 0xBitcoins' Base Layer 2 Address on Mainnet Launch.
//		reward_amount =  ( 50 * 10**18)/( 2**(rewardEra) );  //Zero reward for first days to setup miners 
//    ^^^ MUST CHANGE TO 0 in constructor reward_amount because no reward until openMining is called
//    ^^^ MUST CHANGE TO 0 in constructor reward_amount because no reward until openMining is called
//    ^^^ MUST CHANGE TO 0 in constructor reward_amount because no reward until openMining is called
/* MUST REMOVE AdjustDiff()  for mainnet, it is only used to reset for testing test more.

    function AdjustDiff() public onlyOwner {
            miningTarget = 2**234;
    } 
    */
//
// Based Work Token - BWORK Token - Token and Mining Contract Base Network
//
// Website: https://BasedWorkToken.org/
// Github: https://github.com/BasedWorkToken/
// Discord: https://discord.gg/QrGNf47ATk/
// Twitter: https://x.com/BasedWorkToken/
//
//
// Distrubtion of Based Work Token - BWORK Token is as follows:
//
// 100% of BWORK Token is distributed using this contract which distributes tokens to users by using Proof of work and is considered a Version 2 & Layer 2 0xBitcoin allowing all 0xBitcoin to be converted to BWORK Tokens.
// Computers solve a complicated problem to gain tokens!
// 100% of 0xBitcoin accepted for BWORK Tokens
// 100% Of the Token is distributed to the users! No dev fee!
//
//
// Symbol: BWORK
// Decimals: 18
//
// Total supply: 21,000,000.000000000000000000
//   =
// 10,835,900 0xBitcoin Tokens able to transfered to BWORK Tokens.
// +
// 10,164,100 Mined over 100+ years using Bitcoins Distrubtion halvings every ~4 years. Uses Proof-oF-Work to distribute the tokens. Public Miner is available see https://BasedWorkToken.org 
//  
//
// No dev cut, or advantage taken at launch. Public miner available at launch. 100% of the token is given away fairly over 100+ years using Bitcoins model!
// 
// Mint 2016 answers per challenge in this cost savings Bitcoin!! Less failed transactions as the challenge only changes every 2016 answers instead of every answer.
//
// Credits: 0xBitcoin
//
// startTime =  1738771200;  //Date and time (GMT): Wednesday, Feb 5, 2025 4:00:00 PM GMT then openMining functioncan then be called and mining will have rewards, until then all rewards will be 0.


pragma solidity ^0.8.13;

import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IERC20Permit} from "openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {ERC20Permit} from "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {IERC20Metadata} from "openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Context} from "openzeppelin-contracts/contracts/utils/Context.sol";
import {Strings} from "openzeppelin-contracts/contracts/utils/Strings.sol";
import {ECDSA} from "openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol";
import {EIP712} from "openzeppelin-contracts/contracts/utils/cryptography/EIP712.sol";


// File: contracts/BasedWorkToken.sol

// Based Work Token - BWORK Token - Token and Mining Contract Base Network
//
// Website: https://BasedWorkToken.org/
// Github: https://github.com/BasedWorkToken/
// Discord: https://discord.gg/QrGNf47ATk/
// Twitter: https://x.com/BasedWorkToken/
//
//
// Distrubtion of Based Work Token - BWORK Token is as follows:
//
// 100% of BWORK Token is distributed using this contract which distributes tokens to users by using Proof of work and is considered a Layer 2 and v2 of 0xBitcoin allowing all 0xBitcoin to be converted to BWORK Tokens.
// Computers solve a complicated problem to gain tokens!
// 100% of 0xBitcoin accepted for BWORK Tokens
// 100% Of the Token is distributed to the users! No dev fee!
//
//
// Symbol: BWORK
// Decimals: 18
//
// Total supply: 21,000,000.000000000000000000
//   =
// 10,835,900 0xBitcoin Tokens able to transfered to BWORK Tokens.
// +
// 10,164,100 Mined over 100+ years using Bitcoins Distrubtion halvings every ~4 years. Uses Proof-oF-Work to distribute the tokens. Public Miner is available see https://dWorkToken.org 
//  
//
// No dev cut, or advantage taken at launch. Public miner available at launch. 100% of the token is given away fairly over 100+ years using Bitcoins model!
// 
// Mint 2016 answers per challenge in this cost savings Bitcoin!! Less failed transactions as the challenge only changes every 2016 answers instead of every answer.
//
// Credits: 0xBitcoin
//
// startTime =  1738771200;  //Date and time (GMT): Wednesday, Feb 5, 2025 4:00:00 PM GMT then openMining functioncan then be called and mining will have rewards, until then all rewards will be 0.






// File: contracts/utils/Math.sol

library ExtendedMath2 {


    //return the smaller of the two inputs (a or b)
    function limitLessThan(uint a, uint b) internal pure returns (uint c) {

        if(a > b) return b;

        return a;

    }
}


interface IRightsTo0xBitcoinV1 {
    function withdrawToken(uint256 _amount, address _to) external;
    function burnToken(uint256 _amount, address _from) external;
}





contract RightsTo0xBitcoinV1 is ERC20Permit, Ownable {
	constructor() ERC20("Rights To 0xBitcoin Token", "R0xBTC", 18, 10_835_900 * 10**18 ) ERC20Permit("Rights To 0xBitcoin Token") {
     
    }

    function burnToken(uint256 _amount, address _from) external onlyOwner{
    
        // transfer the token from address of this contract
        // to address of the user (executing the withdrawToken() function)
                _burn(_from, _amount);
   }
}



contract a0xbtcMock is ERC20Permit {
	constructor() ERC20("Mock 0xBitcoin Token", "M0xBTC", 8, 10_835_900 * 10**8 ) ERC20Permit("Mock 0xBitcoin Token") {
        
    }
    function withdrawToken(uint256 _amount) external {
        // transfer the token from address of this contract
        // to address of the user (executing the withdrawToken() function)
                _mint(msg.sender, _amount);
    }
   
}




contract BasedWorkToken is ERC20Permit, Ownable {



////
// Minting Stuff Follows
////


    
	
    uint public targetTime = 60*10;
    uint public startTime =  1738771200;  //Date and time (GMT): Wednesday, Feb 5, 2025 4:00:00 PM GMT

    //Events
 //   using SafeMath2 for uint256;
    using ExtendedMath2 for uint;
    event Mint(address indexed from, uint reward_amount, uint epochCount, bytes32 newChallengeNumber);
    event MegaMint(address indexed from, uint epochCount, bytes32 newChallengeNumber, uint NumberOfTokensMinted, uint256 TokenMultipler);

    // This mapping can be used to store combinations of challenge, user, and nonce which is the digest
    // to ensure they are not used again.
    mapping(bytes32 => mapping(bytes32 => bool) )public usedCombinations;
	
    uint public constant _totalSupply = 21000000000000000000000000;
    uint public latestDifficultyPeriodStarted2 = block.timestamp; //BlockTime of last readjustment
    uint public latestDifficultyPeriodStarted = block.number; // for readjustments
    uint public epochCount = 0;//number of 'blocks' mined

    uint public _BLOCKS_PER_READJUSTMENT = 2016; // should be 2016 blocks more inline with BTC
    uint public  _MAXIMUM_TARGET = 2**253;

    //a little number
    uint public  _MINIMUM_TARGET =  2**16;
    uint public miningTarget = 2**234;  //1 difficulty to start normalized to 0xBitcoins starting difficulty
  
    bytes32 public challengeNumber = blockhash(block.number - 1); //this is the next first challenge that will be used, challengeNumber is the main challenge to solve for
    mapping(bytes32 => bool) public usedChallenges;
    uint public rewardEra = 1;
    uint public maxSupplyForEra = (_totalSupply - _totalSupply.div( 2**(rewardEra + 1)));
//    ^^^ MUST CHANGE TO 0 in constructor for reward_amount because no reward until openMining is called

//    ^^^ MUST CHANGE TO 0 in constructor  for reward_amount because no reward until openMining is called
    uint public reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
    //Stuff for Functions
    uint public tokensMinted = 10_835_900 * 10**18;  //Tokens Minted, 0xBitcoin had 10_835_900 0xBitcoin mined so start there.
    uint public epochOld = 0;  //Epoch count at each readjustment 
    // startup locks
    bool initeds = false;
    bool locked = false;
    
    address public _RightsTo0xBitcoinV1_Address;
    address public _0xBitcoin_Address;

    
//adjust StartTime comments about actual start time
//adjust StartTime comments about actual start time
//adjust StartTime comments about actual start time
//adjust StartTime comments about actual start time
//1738771200  //Date and time (GMT): Wednesday, Feb 5, 2025 4:00:00 PM GMT
	constructor() ERC20("Based Work Token", "BWORK", 18, 21_000_000 * 10 ** 18) ERC20Permit("Based Work Token") {
		latestDifficultyPeriodStarted2 = block.timestamp;
		latestDifficultyPeriodStarted = block.number;	
		challengeNumber = blockhash(block.number -1); //generate a new one so we can start with a fresh
		usedChallenges[blockhash(block.number - 1)] = true;
		
        
     
        RightsTo0xBitcoinV1 child2 = new RightsTo0xBitcoinV1(); //Launches RightsTo0xBitcoin contract for us
        _RightsTo0xBitcoinV1_Address = address(child2);//_RightsTo0xBitcoinV1;


        a0xbtcMock child = new a0xbtcMock(); //DELETE THIS USE BELOW
		_0xBitcoin_Address = address(child); //ZeroXBitcoin Address;  //Should be 0xc4D4FD4F4459730d176844c170F2bB323c87Eb3B = Mainnet Base

		
	}

    function AdjustDiff() public onlyOwner {
            miningTarget = 2**234;
    } 
    
	function depositFromV1toV2(uint amount) public {
	
		require(ERC20(_0xBitcoin_Address).transferFrom(msg.sender, address(this), amount), "Must transfer 0xBitcoin V1 to recieve RightsTo0xBitcoinV1 and 0xBitcoin V2");
		IRightsTo0xBitcoinV1(_RightsTo0xBitcoinV1_Address).withdrawToken(amount * 10 ** 10, msg.sender);
		_mint(msg.sender, amount * 10 ** 10);
	
	}
	
	
	

	function withdrawFromV2toV1(uint amount) public {
		require(amount / 10 ** 10 >= 1, "Must deposit at least 10 ** 10 tokens to get 0.0000001 0xBTC because 0xBTC has 8 decimals");
		IRightsTo0xBitcoinV1(_RightsTo0xBitcoinV1_Address).burnToken(amount, msg.sender);
		_burn(msg.sender, amount);
		ERC20(_0xBitcoin_Address).transfer(msg.sender, amount / 10 ** 10);
	
	}
	


    function calculateCompensation(uint256 multiplier) public pure returns (uint256) {
        if(multiplier < 4){
        	return 1;
        }
        return log2(multiplier/2) + 1;
    }
    
    /**
     * @dev Simple log2 implementation
     */
    function log2(uint256 x) internal pure returns (uint256) {
        uint256 n = 0;
        while (x > 1) {
            x >>= 1;
            n++;
        }
        return n;
    }
    

	

	//Starts mining after a few days period for miners to setup is done
	function openMining() public returns (bool success) {
		require(!locked, "Only allowed to run once");
		locked = true;
		require(block.timestamp >= startTime && block.timestamp <= startTime + 60* 60 * 24* 7, "Must wait until after startTime (Feb 5th 2025 @ 4PM GMT) epcohTime = 1738771200");
		challengeNumber = blockhash(block.number -1); //generate a new one so we can start fresh
        reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
		miningTarget = (2**234);  //0xBTCs starting difficulty of 1
		latestDifficultyPeriodStarted2 = block.timestamp;
		latestDifficultyPeriodStarted = block.number;	
		
		require(usedChallenges[challengeNumber] == false, "Must never have used this challenge before.");
		usedChallenges[challengeNumber] = true;
		return true;
	}


	///
	// Based Work Token Multi Minting
	///



	function multiMint_SameAddress(address mintToAddress, uint256 [] memory nonce) public {
        uint NextEpochCount = blocksToReadjust();
		uint xLoop = 0;
		uint GoodLoops = 0;
		bytes32 localChallengeNumber=challengeNumber;
		uint localMiningTarget = miningTarget;
		for (xLoop = 0; xLoop < nonce.length; xLoop++) {
		    bytes32 digest = keccak256(abi.encodePacked(localChallengeNumber, msg.sender, nonce[xLoop]));
		    uint localDigestINT = uint256(digest);
		    if (usedCombinations[localChallengeNumber][digest] || localDigestINT >= localMiningTarget) {
		        continue;
		    }
		
		    uint multiplier_local = localMiningTarget / localDigestINT;
		    uint compensation = calculateCompensation(multiplier_local);
		    GoodLoops = GoodLoops.add(compensation);
		    
	        usedCombinations[localChallengeNumber][digest] = true;
		    if (GoodLoops >= NextEpochCount) {
		    	GoodLoops = NextEpochCount;
			    break;
		    }

		  
		}

       	_startNewMiningEpoch_MultiMint_Mass_Epochs(GoodLoops, NextEpochCount);

		uint payout = GoodLoops * reward_amount;

		//if max supply for the era will be exceeded next reward round then enter the new era before that happens
		//59 is the final reward era, almost all tokens minted
		if( tokensMinted.add(payout) > maxSupplyForEra && rewardEra < 59)
		{
			rewardEra = rewardEra + 1;
			maxSupplyForEra = _totalSupply - _totalSupply.div( 2**(rewardEra + 1));
			reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
			payout = payout.div(2);
		}
		_mint(mintToAddress, payout);

		emit Mint(msg.sender, payout, epochCount, localChallengeNumber );	
		
		tokensMinted = tokensMinted.add(payout);

	
	}
	
	///
	// Based Work Token Multi Minting With ReWritter for when at the end of a challenge period. Very rare usage.
	///

	function multiMint_SameAddress_2(address mintToAddress, uint256 [] memory nonce) public {
        uint NextEpochCount = blocksToReadjust();
		uint xLoop = 0;
		uint GoodLoops = 0;
		bytes32 localChallengeNumber=challengeNumber;
		uint localMiningTarget = miningTarget;
		for (xLoop = 0; xLoop < nonce.length; xLoop++) {
		    bytes32 digest = keccak256(abi.encodePacked(localChallengeNumber, msg.sender, nonce[xLoop]));
		    uint localDigestINT = uint256(digest);
		    if (usedCombinations[localChallengeNumber][digest] || localDigestINT >= localMiningTarget) {
		        continue;
		    }
		
		    uint multiplier_local = localMiningTarget / localDigestINT;
		    uint compensation = calculateCompensation(multiplier_local);
		    GoodLoops = GoodLoops.add(compensation);
		    
	        usedCombinations[localChallengeNumber][digest] = true;
		    if (GoodLoops >= NextEpochCount) {
		    	GoodLoops = NextEpochCount;
                for(uint xaa = 0; xaa<=xLoop; xaa++){
                    bytes32 digest2 = keccak256(abi.encodePacked(localChallengeNumber, msg.sender, nonce[xaa]));
                    usedCombinations[localChallengeNumber][digest2]=false;
                }
			    break;
		    }

		  
		}

       	_startNewMiningEpoch_MultiMint_Mass_Epochs(GoodLoops, NextEpochCount);

		uint payout = GoodLoops * reward_amount;

		//if max supply for the era will be exceeded next reward round then enter the new era before that happens
		//59 is the final reward era, almost all tokens minted
		if( tokensMinted.add(payout) > maxSupplyForEra && rewardEra < 59)
		{
			rewardEra = rewardEra + 1;
			maxSupplyForEra = _totalSupply - _totalSupply.div( 2**(rewardEra + 1));
			reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
			payout = payout.div(2);
		}

		_mint(mintToAddress, payout);

		emit Mint(msg.sender, payout, epochCount, localChallengeNumber );	
		
		tokensMinted = tokensMinted.add(payout);

	
	}
	

	///
	// Based Work Token Single Minting
	///

	//compatibility function
	function mint(uint256 nonce, bytes32 challenge_digest) public {
		mintTo(nonce, msg.sender);
	}
	

	function mintTo(uint256 nonce, address mintToAddress) public {
		bytes32 localChallengeNumber = challengeNumber;
		bytes32 digest =  keccak256(abi.encodePacked(localChallengeNumber, msg.sender, nonce));

		uint localDigestINT = uint256(digest);
		uint localMiningTarget = miningTarget;
		
		//the digest must be smaller than the target
		require(uint256(localDigestINT) < localMiningTarget, "Digest must be smaller than miningTarget");
		require(!usedCombinations[localChallengeNumber][digest], "Must not been the first time this solve has been used");
		usedCombinations[localChallengeNumber][digest] = true;
		
		uint multiplier_local = localMiningTarget / localDigestINT;
		uint compensation = calculateCompensation(multiplier_local);
		uint local_epoch_cnt = epochCount;
       	_startNewMiningEpoch_MultiMint_Mass_Epochs(compensation, blocksToReadjust());
		local_epoch_cnt = epochCount - local_epoch_cnt;
		uint localreward = local_epoch_cnt*reward_amount;
		
		
		//if max supply for the era will be exceeded next reward round then enter the new era before that happens
		//59 is the final reward era, almost all tokens minted
		if( tokensMinted.add(localreward) > maxSupplyForEra && rewardEra < 59)
		{
			rewardEra = rewardEra + 1;
			maxSupplyForEra = _totalSupply - _totalSupply.div( 2**(rewardEra + 1));
			reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
			localreward = localreward.div(2);
		}

        
        _mint(mintToAddress, localreward);
        
		tokensMinted = tokensMinted.add(localreward);
		

		emit Mint(msg.sender, localreward, epochCount, localChallengeNumber);


	}



	function blocksFromReadjust() public view returns (uint256 blocks){
		blocks = (epochCount - epochOld);
		return blocks;
	}
	

	function blocksToReadjust() public view returns (uint blocks){
		
		uint256 blktimestamp = block.timestamp;
		uint local_BLOCKS_PER_READJUSTMENT = _BLOCKS_PER_READJUSTMENT;
		uint localEpochCount = epochCount;
		uint localEpochOld = epochOld;
		
		uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2;
		uint adjusDiffTargetTime = targetTime * local_BLOCKS_PER_READJUSTMENT;
		
		uint MultiplierOfTime = 3;
		if(localEpochCount - localEpochOld > 0){
			
			MultiplierOfTime = (((localEpochCount - localEpochOld - 1)/(local_BLOCKS_PER_READJUSTMENT/4))+3);
		}
		
		if(MultiplierOfTime == 6){
			MultiplierOfTime=5;
		}

		uint adjustFinal = adjusDiffTargetTime * MultiplierOfTime;

		if( TimeSinceLastDifficultyPeriod2 > adjustFinal)
		{
				blocks = 1; //Complicated math not needed if only moving 1 block; otherwize, local_BLOCKS_PER_READJUSTMENT/difficulty_adjust_multiplier - ((localEpochCount - localEpochOld) % (local_BLOCKS_PER_READJUSTMENT/difficulty_adjust_multiplier));
				return (blocks);
		}else{
			    blocks = local_BLOCKS_PER_READJUSTMENT - ((localEpochCount - localEpochOld) % local_BLOCKS_PER_READJUSTMENT);
			    return (blocks);
		}
	
	}


    function seconds_Until_adjustmentSwitch() public view returns (uint secs) {
        uint256 blktimestamp = block.timestamp;
        uint256 local_BLOCKS_PER_READJUSTMENT = _BLOCKS_PER_READJUSTMENT;
        uint256 adjusDiffTargetTime = local_BLOCKS_PER_READJUSTMENT * targetTime;
        uint256 localEpochCount = epochCount;
        uint256 localEpochOld = epochOld;

        uint256 MultiplierOfTime = 3;
        if (localEpochCount - localEpochOld > 0) {
            MultiplierOfTime = (((localEpochCount - localEpochOld - 1) / (local_BLOCKS_PER_READJUSTMENT / 4)) + 3);
        }

        if (MultiplierOfTime == 6) {
            MultiplierOfTime = 5;
        }

        uint256 adjustFinal = adjusDiffTargetTime * MultiplierOfTime;

        adjusDiffTargetTime = adjustFinal + latestDifficultyPeriodStarted2;
        int useThisForTimeLeft = int256(adjusDiffTargetTime) - int256(blktimestamp);
        if (useThisForTimeLeft < 0) {
            return 0;
        }
        return adjusDiffTargetTime - blktimestamp;
    }





	function _startNewMiningEpoch_MultiMint_Mass_Epochs(uint epochsz, uint nextEpoch) internal{
	
			
		uint localEpochCount = epochCount;
		uint blocksToReadjust_local = nextEpoch;
		
        if(epochsz >= blocksToReadjust_local){
			epochsz = blocksToReadjust_local;
            epochCount = localEpochCount.add(epochsz);
            if(_totalSupply < tokensMinted){
                    reward_amount = 0;
            }
            _reAdjustDifficulty();
            
            bytes32 localChallenge = blockhash(block.number - 1);
            localChallenge = bytes32(keccak256(abi.encodePacked(localChallenge, challengeNumber)));
            require(usedChallenges[localChallenge] == false, "Must never have used this challenge before.");
            usedChallenges[localChallenge] = true;
            challengeNumber = localChallenge;
					
		}else{

            epochCount = localEpochCount.add(epochsz);
        }
				
	
    }



	function reAdjustsToWhatDifficultyAVG(uint extraTime) public view returns (uint difficulty) {
		uint blktimestamp = block.timestamp;
		uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2 + extraTime+1;
		uint epochTotal = epochCount - epochOld;
		uint adjusDiffTargetTime = targetTime * epochTotal+1;
		uint miningTarget2 = 0;

		//if there were less eth blocks passed in time than expected
		if( TimeSinceLastDifficultyPeriod2 < adjusDiffTargetTime )
		{
			uint excess_block_pct = (adjusDiffTargetTime.mult(100)).div( TimeSinceLastDifficultyPeriod2 );
			uint excess_block_pct_extra = excess_block_pct.sub(100).limitLessThan(1000);
			//make it harder 
			miningTarget2 = miningTarget.sub(miningTarget.div(1333).mult(excess_block_pct_extra));   //by up to 4x
		}else{
			uint shortage_block_pct = (TimeSinceLastDifficultyPeriod2.mult(100)).div( adjusDiffTargetTime );

			uint shortage_block_pct_extra = shortage_block_pct.sub(100).limitLessThan(1000); //always between 0 and 1000
			//make it easier
			miningTarget2 = miningTarget.add(miningTarget.div(333).mult(shortage_block_pct_extra));   //by up to 4x
		}

		if(miningTarget2 < _MINIMUM_TARGET) //very difficult
		{
			miningTarget2 = _MINIMUM_TARGET;
		}
		if(miningTarget2 > _MAXIMUM_TARGET) //very easy
		{
			miningTarget2 = _MAXIMUM_TARGET;
		}
		difficulty = _MAXIMUM_TARGET.div(miningTarget2);
			return difficulty;
	}


	function reAdjustsToWhatDifficulty_MaxPain_Difficulty() public view returns (uint difficulty) {
		difficulty = _MAXIMUM_TARGET.div(reAdjustsToWhatDifficulty_MaxPain_Target());
		return difficulty;
	}

	function reAdjustsToWhatDifficulty_MaxPain_Target() public view returns (uint target) {
		uint epochTotal = blocksToReadjust() + blocksFromReadjust();
		uint adjusDiffTargetTime = targetTime *  epochTotal; 
		uint256 blktimestamp = block.timestamp;
		uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2+1;
        uint miningTarget2 = 0;

		//if there were less eth blocks passed in time than expected
		if( TimeSinceLastDifficultyPeriod2 < adjusDiffTargetTime )
		{
			uint excess_block_pct = (adjusDiffTargetTime.mult(100)).div( TimeSinceLastDifficultyPeriod2 );
			uint excess_block_pct_extra = excess_block_pct.sub(100).limitLessThan(1000);
			//make it harder 
			miningTarget2 = miningTarget.sub(miningTarget.div(1333).mult(excess_block_pct_extra));   //by up to 4x
		}else{
			uint shortage_block_pct = (TimeSinceLastDifficultyPeriod2.mult(100)).div( adjusDiffTargetTime );

			uint shortage_block_pct_extra = shortage_block_pct.sub(100).limitLessThan(1000); //always between 0 and 1000
			//make it easier
			miningTarget2 = miningTarget.add(miningTarget.div(333).mult(shortage_block_pct_extra));   //by up to 4x
		}

		if(miningTarget2 < _MINIMUM_TARGET) //very difficult
		{
			miningTarget2 = _MINIMUM_TARGET;
		}
		if(miningTarget2 > _MAXIMUM_TARGET) //very easy
		{
			miningTarget2 = _MAXIMUM_TARGET;
		}
		//difficulty = _MAXIMUM_TARGET.div(miningTarget2);
			return miningTarget2;
	}


	function reAdjustsToWhatDifficulty_MaxPain_Difficulty_AdditionalTime(uint addTime) public view returns (uint difficulty) {
		difficulty = _MAXIMUM_TARGET.div(reAdjustsToWhatDifficulty_MaxPain_Target_AdditionalTime(addTime));
		return difficulty;
	}
	
	

	function reAdjustsToWhatDifficulty_MaxPain_Target_AdditionalTime(uint addTime) public view returns (uint target) {
		uint epochTotal =  blocksToReadjust() + blocksFromReadjust();
		uint adjusDiffTargetTime = targetTime *  epochTotal; 
		uint256 blktimestamp = block.timestamp + addTime;
		uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2+1;
       	uint miningTarget2 = 0;

		//if there were less eth blocks passed in time than expected
		if( TimeSinceLastDifficultyPeriod2 < adjusDiffTargetTime )
		{
			uint excess_block_pct = (adjusDiffTargetTime.mult(100)).div( TimeSinceLastDifficultyPeriod2 );
			uint excess_block_pct_extra = excess_block_pct.sub(100).limitLessThan(1000);
			//make it harder 
			miningTarget2 = miningTarget.sub(miningTarget.div(1333).mult(excess_block_pct_extra));   //by up to 4x
		}else{
			uint shortage_block_pct = (TimeSinceLastDifficultyPeriod2.mult(100)).div( adjusDiffTargetTime );

			uint shortage_block_pct_extra = shortage_block_pct.sub(100).limitLessThan(1000); //always between 0 and 1000
			//make it easier
			miningTarget2 = miningTarget.add(miningTarget.div(333).mult(shortage_block_pct_extra));   //by up to 4x
		}

		if(miningTarget2 < _MINIMUM_TARGET) //very difficult
		{
			miningTarget2 = _MINIMUM_TARGET;
		}
		if(miningTarget2 > _MAXIMUM_TARGET) //very easy
		{
			miningTarget2 = _MAXIMUM_TARGET;
		}
		//difficulty = _MAXIMUM_TARGET.div(miningTarget2);
			return miningTarget2;
	}



	function _reAdjustDifficulty() internal {
		uint256 blktimestamp = block.timestamp;
		uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2 +1;
		uint epochTotal = epochCount - epochOld;
		uint adjusDiffTargetTime = targetTime *  epochTotal; 
		epochOld = epochCount;

		//if there were less eth blocks passed in time than expected
		if( TimeSinceLastDifficultyPeriod2 < adjusDiffTargetTime )
		{
			uint excess_block_pct = (adjusDiffTargetTime.mult(100)).div( TimeSinceLastDifficultyPeriod2 );

			uint excess_block_pct_extra = excess_block_pct.sub(100).limitLessThan(1000);
			//make it harder 
			miningTarget = miningTarget.sub(miningTarget.div(1333).mult(excess_block_pct_extra));   //by up to 4x
		}else{
			uint shortage_block_pct = (TimeSinceLastDifficultyPeriod2.mult(100)).div( adjusDiffTargetTime );

			uint shortage_block_pct_extra = shortage_block_pct.sub(100).limitLessThan(1000); //always between 0 and 1000
			//make it easier
			miningTarget = miningTarget.add(miningTarget.div(333).mult(shortage_block_pct_extra));   //by up to 4x
		}

		latestDifficultyPeriodStarted2 = blktimestamp;
		latestDifficultyPeriodStarted = block.number;

		if(miningTarget < _MINIMUM_TARGET) //very difficult
		{
			miningTarget = _MINIMUM_TARGET;
		}
		if(miningTarget > _MAXIMUM_TARGET) //very easy
		{
			miningTarget = _MAXIMUM_TARGET;
		}
		
	}


	//Stat Functions

	function inflationMined () public view returns (uint YearlyInflation, uint EpochsPerYear, uint RewardsAtTime, uint TimePerEpoch){
		if(epochCount - epochOld == 0){
			return (0, 0, 0, 0);
		}
		uint256 blktimestamp = block.timestamp;
		uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2;

        
		TimePerEpoch = TimeSinceLastDifficultyPeriod2 / blocksFromReadjust(); 
		RewardsAtTime = reward_amount;
		uint year = 365 * 24 * 60 * 60;
		EpochsPerYear = year / TimePerEpoch;
		YearlyInflation = RewardsAtTime * EpochsPerYear;
		return (YearlyInflation, EpochsPerYear, RewardsAtTime, TimePerEpoch);
	}

	

	function toNextEraDays () public view returns (uint daysToNextEra, uint _maxSupplyForEra, uint _tokensMinted, uint amtDaily){

        (uint totalamt,,,) = inflationMined();
		(amtDaily) = totalamt / 365;
		if(amtDaily == 0){
			return(0,0,0,0);
		}
		daysToNextEra = (maxSupplyForEra - tokensMinted) / amtDaily;
		return (daysToNextEra, maxSupplyForEra, tokensMinted, amtDaily);
	}
	


	function toNextEraEpochs () public view returns ( uint epochs, uint epochTime, uint daysToNextEra){
		if(blocksFromReadjust() == 0){
			return (0,0,0);
        }
		uint256 blktimestamp = block.timestamp;
        uint TimeSinceLastDifficultyPeriod2 = blktimestamp - latestDifficultyPeriodStarted2;
		uint timePerEpoch = TimeSinceLastDifficultyPeriod2 / blocksFromReadjust();
		(uint daysz,,,) = toNextEraDays();
		uint amt = daysz * (60*60*24) / timePerEpoch;
		return (amt, timePerEpoch, daysz);
	}


	//help debug mining software
	function checkMintSolution(uint256 nonce, bytes32 challenge_digest, bytes32 challenge_number, uint testTarget) public view returns (bool success) {
		bytes32 digest = bytes32(keccak256(abi.encodePacked(challenge_number,msg.sender,nonce)));
		if(uint256(digest) > testTarget) revert();

		return (digest == challenge_digest);
	}


	//help debug mining software2
	function checkMintSolution2(uint256 nonce, bytes32 challenge_digest, bytes32 challenge_number, uint testTarget, address senda) public view returns (bytes32 success) {
		bytes32 digest = bytes32(keccak256(abi.encodePacked(challenge_number,senda,nonce)));
		if(uint256(digest) > testTarget) revert();

		return digest;
	}


	//this is a recent ethereum block hash
	function getChallengeNumber() public view returns (bytes32) {

		return challengeNumber;  

	}

	
	//the number of zeroes the digest of the PoW solution requires.  Auto adjusts
	function getMiningDifficulty() public view returns (uint) {
			return _MAXIMUM_TARGET.div(miningTarget);
	}


	function getMiningTarget() public view returns (uint) {
			return (miningTarget);
	}



	function getMiningMinted() public view returns (uint) {
		return tokensMinted;
	}

	function getCirculatingSupply() public view returns (uint) {
		return tokensMinted;
	}
	
	//21m coins total
	//reward begins at 150 and is cut in half every reward era (as tokens are mined)
	function getMiningReward() public view returns (uint) {
		//once we get half way thru the coins, only get 25 per block
		//every reward era, the reward amount halves.

		return ( 50 * 10**18)/( 2**(rewardEra) );
	}



	function getEpoch() public view returns (uint) {

		return epochCount ;

	}


	//help debug mining software
	function getMintDigest(uint256 nonce, bytes32 challenge_digest, bytes32 challenge_number) public view returns (bytes32 digesttest) {

		bytes32 digest =  keccak256(abi.encodePacked(challengeNumber, msg.sender, nonce));

		return digest;

	}



}

/*
*
* MIT License
* ===========
*
* Copyright (c) 2025 Based Work Token (BWORK)
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.   
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/
