1. The code of "Blockchain.py" is following the tutorial blog at the following site:
https://www.activestate.com/blog/how-to-build-a-blockchain-in-python/
"How to Build a Blockchain in Python (Get Pre-built Runtime)"
Author: Dante Sblendorio

    Note: "blockchain_python_example" contains descriptions of the code by following the tutoral.

2. "HotelRoom.sol" follows the tutorial of "Master Solidity for Blockchain: Step-by-Step Guide" by Gregory McCubbin
at https://www.dappuniversity.com/articles/solidity

    Note: "hotel_room_example" contains the descriptions of the code by following the tutorial.
    
3. Read "Machine Learning and Blockchain for Fraud Detection: Employing Artificial Intelligence in the Banking Sector" by Vinita Silaparasetty, 2018, GCU INTERNATIONAL KNOWLEDGE TRANSFER CONCLAVE - (ISBN 978-93-86516-46-6)" at https://www.academia.edu/40207849/Machine_Learning_and_Blockchain_for_Fraud_Detection_Employing_Artificial_Intelligence_in_the_Banking_Sector to learn how machine learning can be applied to bandking sector to detect suspicious activities and transactions. Follow the github open-source to collect dataset from a a real Czech bank, create a 256 encrypted blochain, integrate it with kmeans algorithm for detection of outlier that indicates suspicous activities.  
    In "fraud_detection_using_kmeans.py":
    a. Preprocessing data, 
       As the author did, three datasets were concatenated to make a dataframe.
       Nans were replaced by zero and non-numeric values were replaced by numeric values.<br />
    b. Blockahin were defined with 256 encryption and POW.<br />
    c. Instanciate the node and blockchain.<br />/>
    d. Implement the methods that respond to request including implementing Kmeans clustering on the newly formed chain. Measure its performance by silhouette_score.<br />
    ```
    Activate the blockchain on a terminal,
    $python3 fraud_detection_using_kmeans.py

    Make requests of node-register, mine, new-transaction on another treminal by using curl commands.
    For example, 
    $curl -X POST "http://192.168.0.4:5000/transactions/new?sender=2&recipient=0&amount=3"
{
  "message": "Transaction will be added to Block 2"
}

    
    The accuracy of kmeans:
    score=0.86273384
    ```
    To do list:
    ```
    a. Understand more about blockchain, its opportunities and challenges.
    b. Undestand more about the data and the relationship between dataframes and between fields.
    c. Research other dataframes and do feature engineering. 
    d. Use different ML algorithms and compare their performances.
    e. research about combining machine learning and blockchain.
    ```
