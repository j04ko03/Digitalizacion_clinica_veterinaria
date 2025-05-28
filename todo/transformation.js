// filepath: c:\Users\CEP-MATI\Desktop\J\Digitalizacion_clinica_veterinaria\src\js\script.js

document.addEventListener("DOMContentLoaded", function() {
    const xmlFile = "assets/xml_xslt/fichamascotas.xml";
    const xsltFile = "assets/xml_xslt/fichamascotas.xsl";

    fetch(xmlFile)
        .then(response => response.text())
        .then(xmlText => {
            const parser = new DOMParser();
            const xmlDoc = parser.parseFromString(xmlText, "application/xml");
            return fetch(xsltFile)
                .then(response => response.text())
                .then(xsltText => {
                    const xsltProcessor = new XSLTProcessor();
                    const xsltDoc = parser.parseFromString(xsltText, "application/xml");
                    xsltProcessor.importStylesheet(xsltDoc);
                    const resultDocument = xsltProcessor.transformToFragment(xmlDoc, document);
                    document.getElementById("pet-profiles").appendChild(resultDocument);
                });
        })
        .catch(error => console.error("Error loading XML or XSLT:", error));
});