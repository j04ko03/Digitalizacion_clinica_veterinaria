# Digitalizacion Clinica Veterinaria

This project is a single-page web application designed to display pet profiles using XML data transformed into HTML format via XSLT. Below are the details of the project structure and instructions for setting it up.

## Project Structure

```
Digitalizacion_clinica_veterinaria
├── assets
│   └── xml_xslt
│       ├── fichamascotas.xml
│       └── fichamascotas.xsl
├── src
│   ├── css
│   │   ├── fichas.css
│   │   └── style.css
│   ├── html
│   │   └── main.html
│   └── js
│       └── transformation.js
├── index.html
└── README.md
```

### Directory Descriptions

- **assets/images**: This directory is intended for storing images related to the pet profiles, but it is currently empty.
  
- **assets/xml_xslt/fichamascotas.xml**: This XML file contains the data for the pet profiles. It will be transformed using XSLT to generate the HTML content for the web application.

- **assets/xml_xslt/fichamascotas.xslt**: This XSLT file is used to transform the XML data into HTML format. It includes templates for each pet and incorporates conditional elements to enhance the presentation of the data.

- **src/css/fichas.css**: This CSS file is intended for styling the pet profiles. It can include styles specific to the layout and design of the pet information.

- **src/css/style.css**: This CSS file is for general styling of the web application. It can include styles for the header and overall layout.

- **src/html/main.html**: This HTML file serves as the main structure of the single-page application. It includes the header and links to the XSLT transformation for displaying the pet profiles.

- **index.html**: This file is the entry point of the web application. It includes links to the main HTML file and other resources.

## Setup Instructions

1. Clone the repository or download the project files to your local machine.
2. Open the project in your preferred code editor.
3. Ensure you have a web server running to serve the HTML files, as XSLT transformations may not work directly from the file system in some browsers.
4. Open `index.html` in your web browser to view the application.

## Usage

The application will display pet profiles based on the data provided in `fichamascotas.xml`. The XSLT file `fichamascotas.xslt` will handle the transformation of the XML data into a user-friendly HTML format.

## Contributing

Feel free to contribute to this project by adding more pet profiles to the XML file, enhancing the styles in the CSS files, or improving the XSLT transformation logic.