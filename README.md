# Tokenmaster
TokenMaster is an innovative web platform that revolutionizes online event ticket booking by integrating cutting-edge technologies including React.js, Solidity, Ethereum, Hardhat, MetaMask, and CSS. With a focus on security, transparency, and efficiency, TokenMaster provides users with a seamless experience to book event tickets using blockchain technology.

React.js User Interface: TokenMaster boasts a user-friendly and responsive interface developed using React.js. This ensures a smooth and intuitive experience for users to navigate and explore upcoming events. 

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
