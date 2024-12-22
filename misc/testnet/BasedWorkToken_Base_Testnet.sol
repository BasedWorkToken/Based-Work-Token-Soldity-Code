
// Testnet Based Work Token - BWORK Token - Mining Contract Base Network
//
// Website: https://testnet.BasedWorkToken.org/
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


//MUST FIX BEFORE LAUNCH
    /*
    uint public immutable startTime =  block.timestamp;  //Date and time (GMT): Wednesday, Feb 5, 2025 4:00:00 PM GMT Unix Epoch: 1738771200
    MUST MAKE IT NOT block.timestamp and make it = Unix Epoch: 1738771200
    MUST MAKE IT NOT block.timestamp and make it = Unix Epoch: 1738771200
    
    REMOVE OWNABLE FROM CONTRACT, REMOVE adjustDiff From contract
    REMOVE OWNABLE FROM CONTRACT, REMOVE adjustDiff From contract
    REMOVE OWNABLE FROM CONTRACT, REMOVE adjustDiff From contract
    REMOVE OWNABLE FROM CONTRACT, REMOVE adjustDiff From contract
    
    ADD CORRECT BASED WORK TOKEN ADDRESS TO CONTRACT
    address public _BasedWorkToken_Address = address(xxxx); Should Be Based Work Token Address on Base
      
    address public _BasedWorkToken_Address = address(xxxx); Should Be Based Work Token Address on Base
      
    address public _BasedWorkToken_Address = address(xxxx); Should Be Based Work Token Address on Base
      
    address public _BasedWorkToken_Address = address(0x0);

//MUST REMOVE ADJUST DIFF MUST REMOVE
//MUST REMOVE ADJUST DIFF MUST REMOVE
    function adjustDiff () public onlyOwner {
            miningTarget = 2**234;
    }


    */












/////
//IMPORT Includes below, then main BasedWorkToken contract
/////

pragma solidity ^0.8.13;





contract Ownable {
    address public immutable owner;
    //event TransferOwnership(address _from, address _to);

    constructor() {
        owner = msg.sender;
        //emit TransferOwnership(address(0), msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner, paymaster for this contract");
        _;
    }
/* WE DONT EVER WANT OWNERSHIP TRANSFERED
    function setOwner(address _owner) public onlyOwner {
        emit TransferOwnership(owner, _owner);
        owner = _owner;
    }
    */
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);
}


library IsContract {
    function isContract(address _addr) internal view returns (bool) {
        bytes32 codehash;
        /* solium-disable-next-line */
        assembly { codehash := extcodehash(_addr) }
        return codehash != bytes32(0) && codehash != bytes32(0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470);
    }
}



// File: contracts/utils/SafeMath.sol

library SafeMath2 {
    function add(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 z = x + y;
        require(z >= x, "Add overflow");
        return z;
    }

    function sub(uint256 x, uint256 y) internal pure returns (uint256) {
        require(x >= y, "Sub underflow");
        return x - y;
    }

    function mult(uint256 x, uint256 y) internal pure returns (uint256) {
        if (x == 0) {
            return 0;
        }

        uint256 z = x * y;
        require(z / x == y, "Mult overflow");
        return z;
    }

    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        require(y != 0, "Div by zero");
        return x / y;
    }

    function divRound(uint256 x, uint256 y) internal pure returns (uint256) {
        require(y != 0, "Div by zero");
        uint256 r = x / y;
        if (x % y != 0) {
            r = r + 1;
        }

        return r;
    }
}



// File: contracts/utils/Math.sol

library ExtendedMath2 {


    //return the smaller of the two inputs (a or b)
    function limitLessThan(uint a, uint b) internal pure returns (uint c) {

        if(a > b) return b;

        return a;

    }
}




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







    //MUST REMOVE ADJUSTDIFF BEFORE MAINNET LAUNCH and REMOVE OWNABLE FROM CONTRACT
    //MUST REMOVE ADJUSTDIFF BEFORE MAINNET LAUNCH and REMOVE OWNABLE FROM CONTRACT
    //MUST REMOVE ADJUSTDIFF BEFORE MAINNET LAUNCH and REMOVE OWNABLE FROM CONTRACT and make reward_amount = 0;
contract BasedWorkToken is Ownable {



////
// Based Work Token Mining Initializations 
////



////
// Based Work Token Mining Initializations 
////


//MUST CHANGE STARTTIME TO uint public constant startTime = 1738771200; 
//MUST CHANGE STARTTIME TO uint public constant startTime = 1738771200; 
//MUST CHANGE STARTTIME TO uint public constant startTime = 1738771200; 

    uint public constant targetTime = 60*10;
    uint public immutable startTime =  block.timestamp;  //Date and time (GMT): Wednesday, Feb 5, 2025 4:00:00 PM GMT Unix Epoch: 1738771200

    //Events
    using SafeMath2 for uint256;
    using ExtendedMath2 for uint;
    event Mint(address indexed from, uint reward_amount, uint epochCount, bytes32 newChallengeNumber);

    // This mapping can be used to store combinations of challenge and digest to allow same digest for multiple challenges
    // to ensure they are not used again.
    mapping(bytes32 => mapping(bytes32 => bool) )public usedCombinations;

    //To prevent the same challenge from occuring twice
    mapping(bytes32 => bool) public usedChallenges;
    //To prevent the same challenge from occuring twice
    mapping(bytes32 => uint) public usedChallengesNumber;

    uint public constant _BLOCKS_PER_READJUSTMENT = 2016; // should be 2016 blocks more inline with BTC
    //a large number that is at least 5x smaller than max possible since we go up a max of 4x so we dont overflow.
    uint public constant _MAXIMUM_TARGET = 2**253;

    //a little number
    uint public constant _MINIMUM_TARGET =  2**16;
	
    uint public constant _maxTotalSupply = 21000000000000000000000000;

    uint public latestDifficultyPeriodStarted2 = block.timestamp; //BlockTime of last readjustment
    uint public latestDifficultyPeriodStarted = block.number; // for readjustments
    uint public epochCount = 0;//number of 'blocks' mined

    uint public miningTarget = 2**234;  //1 difficulty to start normalized to 0xBitcoins starting difficulty
  
    bytes32 public challengeNumber = blockhash(block.number - 1); //this is the next first challenge that will be used, challengeNumber is the main challenge to solve for

    uint public rewardEra = 1;
    uint public maxSupplyForEra = (_maxTotalSupply - _maxTotalSupply.div( 2**(rewardEra + 1)));
    
    uint public reward_amount = 0; //must make 0 in MAINNET
    //Stuff for Functions
    uint public tokensMinted = 10_835_900 * 10**18;  //Tokens Minted, 0xBitcoin had 10_835_900 0xBitcoin mined so start there.
    uint public epochOld = 0;  //Epoch count at each readjustment 
    // startup locks
    bool initeds = false;
    bool locked = false;
    /*
    ADD CORRECT BASED WORK TOKEN ADDRESS TO CONTRACT
    address public _BasedWorkToken_Address = address(xxxx); Should Be Based Work Token Address on Base
      
    address public _BasedWorkToken_Address = address(xxxx); Should Be Based Work Token Address on Base
      
    address public _BasedWorkToken_Address = address(xxxx); Should Be Based Work Token Address on Base
      
    */
    address public constant _BasedWorkToken_Address = address(0x06B075A8A6D83A75fa595d988072BF7b2A8Df93b); //Copid from deployed contract for now

    
	constructor(){
		latestDifficultyPeriodStarted2 = block.timestamp;
		latestDifficultyPeriodStarted = block.number;	
		challengeNumber = blockhash(block.number -1); //generate a new one so we can start with a fresh
		usedChallenges[blockhash(block.number - 1)] = true;
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
    

//MUST REMOVE ADJUST DIFF MUST REMOVE
//MUST REMOVE ADJUST DIFF MUST REMOVE
    function adjustDiff () public onlyOwner {
            miningTarget = 2**234;
    }

	//Starts mining (Feb 5th 2025 @ 4PM GMT) epcohTime = 1738771200
    //Allows miners time to setup
	function openMining() public returns (bool success) {
        require(tokensMinted <= 10_835_900 * 10**18, "Must have supplied tokens to mint");
        require(IERC20(_BasedWorkToken_Address).balanceOf(address(this))>=10_164_100 * 10 ** 18,"Mainnet balance must all of been transfered");
		require(!locked, "Only allowed to run once");
		locked = true;
		require(block.timestamp >= startTime && block.timestamp <= startTime + 60* 60 * 24* 7, "Must wait until after startTime (Feb 5th 2025 @ 4PM GMT) epcohTime = 1738771200");
		challengeNumber = blockhash(block.number -1); //generate a new one so we can start fresh
        reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
        maxSupplyForEra = (_maxTotalSupply - _maxTotalSupply.div( 2**(rewardEra + 1)));
		miningTarget = (2**234);  //0xBTCs starting difficulty of 1
		latestDifficultyPeriodStarted2 = block.timestamp;
		latestDifficultyPeriodStarted = block.number;	
		epochOld = 0;
        epochCount = 0;//number of 'blocks' mined
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
	        usedCombinations[localChallengeNumber][digest] = true;
		
		    uint multiplier_local = localMiningTarget / localDigestINT;
		    uint compensation = calculateCompensation(multiplier_local);
		    GoodLoops = GoodLoops.add(compensation);
		    
		    if (GoodLoops >= NextEpochCount) {
		    	GoodLoops = NextEpochCount;
			    break;
		    }

		  
        }

        require(GoodLoops > 0, "No successful mints in this transaction.");

        _startNewMiningEpoch_MultiMint_Mass_Epochs(GoodLoops, NextEpochCount);

		uint payout = GoodLoops * reward_amount;

		//if max supply for the era will be exceeded next reward round then enter the new era before that happens
		//59 is the final reward era, almost all tokens minted
		if( tokensMinted.add(payout) > maxSupplyForEra && rewardEra < 59)
		{
			rewardEra = rewardEra + 1;
			maxSupplyForEra = _maxTotalSupply - _maxTotalSupply.div( 2**(rewardEra + 1));
			reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
			payout = payout.div(2);
		}

		tokensMinted = tokensMinted.add(payout);

        IERC20(_BasedWorkToken_Address).transfer(mintToAddress, payout);

		emit Mint(msg.sender, payout, epochCount, localChallengeNumber );	

	
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

		    usedCombinations[localChallengeNumber][digest] = true;

		    uint multiplier_local = localMiningTarget / localDigestINT;
		    uint compensation = calculateCompensation(multiplier_local);
		    GoodLoops = GoodLoops.add(compensation);

		    if (GoodLoops >= NextEpochCount) {
		    	GoodLoops = NextEpochCount;
                for(uint xaa = 0; xaa<=xLoop; xaa++){
                    bytes32 digest2 = keccak256(abi.encodePacked(localChallengeNumber, msg.sender, nonce[xaa]));
                    usedCombinations[localChallengeNumber][digest2]=false;
                }
			    break;
		    }

		  
		}

        require(GoodLoops > 0, "No successful mints in this transaction.");

        _startNewMiningEpoch_MultiMint_Mass_Epochs(GoodLoops, NextEpochCount);

		uint payout = GoodLoops * reward_amount;

		//if max supply for the era will be exceeded next reward round then enter the new era before that happens
		//59 is the final reward era, almost all tokens minted
		if( tokensMinted.add(payout) > maxSupplyForEra && rewardEra < 59)
		{
			rewardEra = rewardEra + 1;
			maxSupplyForEra = _maxTotalSupply - _maxTotalSupply.div( 2**(rewardEra + 1));
			reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
			payout = payout.div(2);
		}

		tokensMinted = tokensMinted.add(payout);

       	IERC20(_BasedWorkToken_Address).transfer(mintToAddress, payout);

		emit Mint(msg.sender, payout, epochCount, localChallengeNumber );
	
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
        uint local_blocks_to_readjust = blocksToReadjust();

        if(compensation > local_blocks_to_readjust){
            compensation=local_blocks_to_readjust;
        }

        _startNewMiningEpoch_MultiMint_Mass_Epochs(compensation, local_blocks_to_readjust);

		local_epoch_cnt = epochCount - local_epoch_cnt;

		uint localreward = local_epoch_cnt*reward_amount;
		
		//if max supply for the era will be exceeded next reward round then enter the new era before that happens
		//59 is the final reward era, almost all tokens minted
		if( tokensMinted.add(localreward) > maxSupplyForEra && rewardEra < 59)
		{
			rewardEra = rewardEra + 1;
			maxSupplyForEra = _maxTotalSupply - _maxTotalSupply.div( 2**(rewardEra + 1));
			reward_amount = ( 50 * 10**18)/( 2**(rewardEra) );
			localreward = localreward.div(2);
		}

        
		tokensMinted = tokensMinted.add(localreward);
        
        IERC20(_BasedWorkToken_Address).transfer(mintToAddress, localreward);

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
            if(_maxTotalSupply < tokensMinted){
                    reward_amount = 0;
            }
            _reAdjustDifficulty();
            
            bytes32 localChallenge2 = blockhash(block.number - 1);
            bytes32 localChallenge_advanced = bytes32(keccak256(abi.encodePacked(localChallenge2, challengeNumber)));
            require(usedChallenges[localChallenge_advanced] == false, "Must never have used this challenge before.");
	        challengeNumber = localChallenge_advanced;

            uint maxAmountOfChallengeUses= usedChallengesNumber[localChallenge2] + 1;
            usedChallengesNumber[localChallenge2] = maxAmountOfChallengeUses;
            require(maxAmountOfChallengeUses<=3,"Must only use the same challenge a max of 3 times, meaning 4 seconds minimum per 2016 answers.");

						
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

        require(latestDifficultyPeriodStarted2!=blktimestamp, "No same block double 2016 writes.");
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
