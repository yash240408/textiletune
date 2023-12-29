# Textile Calculator App [TextileTune]

Welcome to the Textile Calculator app, an open-source project designed to simplify unit conversions in the textile industry. This Flutter-based mobile app provides a user-friendly interface for converting between various textile units, making it a valuable tool for professionals and enthusiasts alike.

## Technical Stack

- **Frontend:** Flutter (mobile app framework)
- **Backend:** (Optional) Choose based on data storage needs:
  - Local Storage: SharedPreferences (built-in Flutter package) for basic values like recently used conversions.
  - Remote Database: Cloud Firestore (NoSQL database) for storing user-specific conversion history or complex conversion configurations.

## Non-Technical Languages

Developers contributing to this project should have a thorough understanding of:

- **Textile Unit System:** Familiarity with units used in different stages of textile production, such as yarn count, fabric weight, etc.
- **Conversion Formulas:** Knowledge of accurate conversion formulas between various textile units.
- **User Interface Design:** Design skills to create an intuitive and user-friendly interface for the app.

## Features

1. **Unit Conversion:** Convert between commonly used textile units.
2. **Material Selection:** Allow users to select the type of textile (yarn, fabric, etc.) for accurate conversion.
3. **Recent Conversions (Optional):** Display a list of recent conversions for quick reference.
4. **Conversion History (Optional):** Store user-specific conversion history for future reference (requires remote database).
5. **Customization (Optional):** Allow users to define custom conversion formulas or units (requires advanced user interface and data management).

## Data Storage (Optional)

- **Variables:** For basic user input and temporary calculations. Store recently used values like current textile type, selected units, and conversion results.
- **Database:** If you want to store user-specific conversion history or offer complex features like custom formulas, consider using a remote database like Cloud Firestore. This allows users to access their data across devices and provides better scalability.

## Additional Tips

- **Offer Offline Functionality:** Allow users to convert units even without an internet connection by storing conversion formulas locally.
- **Integrate Unit Calculators:** Consider integrating additional calculators relevant to the textile industry, like fabric yield or fiber strength calculations.
- **Provide Educational Resources:** Add informative sections explaining different textile units and their applications.

## How to Contribute

We welcome contributions from the community to enhance the functionality and usability of the Textile Calculator app. To contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and submit a pull request.
4. Ensure your code follows the project's coding standards.
5. Collaborate with the community and respond to feedback.

Thank you for contributing to the Textile Calculator project! Together, let's make unit conversions in the textile industry more accessible and efficient.
## Getting Started 👩‍💻

> ⚠️Prerequisites
>
> - Before getting into it, make sure you have flutter installed on your system

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.


### Installation

1. Clone the repo

```sh
 git clone https://github.com/yash240408/textiletune.git
```

2. Open the **main.dart** file

3. Have fun!

## Contributing


Contributions are what makes the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

See the [open issues](https://github.com/yash240408/textiletune/issues) for a list of proposed features (and known issues). You can start by solving the issues marked as **good first issue**.

- If you have any suggestions for the projects, like reporting a bug, improving UI, or improving the README.md file, feel free to **open an issue** to discuss it, or directly create a pull request with the necessary changes.
- Please make sure you check your spelling and grammar.
- Create individual PR for each suggestion.

## Example Calculation Spreadsheet

For a more in-depth understanding of the textile calculations and formulas supported by this project, you can refer to the "GSM-GLM-CALC.xlsx" file. This spreadsheet provides detailed examples of various textile unit conversions, making it a valuable resource for exploring and testing the capabilities of the Textile Calculator app.

Feel free to use this file as a reference while contributing to the project or customizing conversion formulas. It serves as a practical guide to the supported functionalities and can help you better grasp the nuances of textile calculations.

[Download GSM-GLM-CALC.xlsx](https://github.com/yash240408/textiletune/blob/master/GSM-GLM-CALC.xlsx)

### Creating A Pull Request

1. Fork the Project
2. Clone your forked repository

```sh
git clone https://github.com/<your_github_username>/textiletune.git
```
3. Now go ahead and create a new branch and move to the branch
```sh
git checkout -b fix-issue-<ISSUE-NUMBER>
```
4. After you have added your changes, follow the following command chain
   Check the changed files
```sh
git status -s
```

5. Add all the files to the staging area
```sh
git add .
```
 or
```sh
git add <file_name1> <file_name2>
```
6. Commit your changes
```sh
git commit -m "<EXPLAIN-YOUR_CHANGES>"
```
7. Push your changes
```sh
git push origin fix-issue-<ISSUE-NUMBER>
```
8. Open a Pull Request 
## 👩‍💻 Project Admin

<table>
	<tr>
		<td align="center">
			<a href="https://github.com/yash240408">
				<img src="https://avatars.githubusercontent.com/u/99703365?v=4" width="100px" alt="Yash Mistry" />
				<br /> <sub><b>yash240408</b></sub>
			</a>
			<br /> <a href="https://github.com/yash240408"> 
		👩‍💻Admin
	    </a>
		</td>
	</tr>
</table>
