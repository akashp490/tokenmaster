# Tokenmaster
TokenMaster: Blockchain-Powered Online Event Ticket Booking TokenMaster is an innovative web platform that revolutionizes online event ticket booking by integrating cutting-edge technologies including React.js, Solidity, Ethereum, Hardhat, MetaMask, and CSS. With a focus on security, transparency, and efficiency, TokenMaster provides users with a seamless experience to book event tickets using blockchain technology.
 Key Features:
 React.js User Interface: TokenMaster boasts a user-friendly and responsive interface developed using React.js. This ensures a smooth and intuitive experience for users to navigate and explore upcoming events. 
Smart Contracts with Solidity: The platform leverages Solidity, a programming language for creating smart contracts on the Ethereum blockchain. This technology underpins the creation and execution of tamper-proof event tickets, enhancing security and eliminating fraudulent practices.
 Ethereum Integration: TokenMaster harnesses the power of the Ethereum blockchain to store event information, ticket details, and transaction records securely. This ensures the immutability of data and provides a transparent ledger for all involved parties.
 Hardhat Development Environment: By utilizing the Hardhat development environment, TokenMaster guarantees a robust and efficient blockchain integration. This environment simplifies the process of testing, deploying, and interacting with smart contracts.
 MetaMask Wallet Integration: To streamline the ticket booking process, TokenMaster incorporates MetaMask, a popular Ethereum wallet. This enables users to securely purchase event tickets using their cryptocurrency holdings, all while maintaining control over their private keys.
 CSS Styling: TokenMaster doesn't just prioritize functionality – it also values aesthetics. The platform is styled using CSS to offer an engaging and visually appealing interface, enhancing the user experience.
 
 How TokenMaster Works: 
Event Listing: Users can explore a wide range of upcoming events showcased on the TokenMaster platform. 
Ticket Selection: After selecting an event, users can choose from available ticket options based on their preferences. MetaMask Integration: Users can connect their MetaMask wallets to the platform, enabling them to make secure and transparent ticket purchases using cryptocurrencies. 
Smart Contract Interaction: When a user purchases a ticket, a Solidity smart contract is executed on the Ethereum blockchain. This contract generates a unique digital token representing the event ticket. 
Blockchain Security: Event tickets are securely stored on the blockchain, making them immune to alteration or unauthorized duplication. Entry Validation: During the event, attendees' digital tickets are verified using the blockchain, ensuring the authenticity of entry. Post-Event Transparency: After the event, the blockchain serves as an immutable record of attendance, promoting transparency and accountability.


## Technology Stack & Tools

- Solidity (Writing Smart Contracts & Tests)
- Javascript (React & Testing)
- [Hardhat](https://hardhat.org/) (Development Framework)
- [Ethers.js](https://docs.ethers.io/v5/) (Blockchain Interaction)
- [React.js](https://reactjs.org/) (Frontend Framework)
- [MetaMask](https://metamask.io/)

## Requirements For Initial Setup
- Install [NodeJS](https://nodejs.org/en/). Recommended to use the LTS version.
- Install [MetaMask](https://metamask.io/) on your browser.

## Setting Up

### 1. Install Dependencies:
`$ npm install`

### 2. Run tests
`$ npx hardhat test`

### 3. Start Hardhat node
`$ npx hardhat node`

### 4. Run deployment script
In a separate terminal execute:
`$ npx hardhat run ./scripts/deploy.js --network localhost`

### 5. Start frontend
`$ npm run start`
