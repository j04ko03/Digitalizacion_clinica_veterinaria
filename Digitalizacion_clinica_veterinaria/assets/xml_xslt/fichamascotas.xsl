<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Pet Profiles</title>
                <link rel="stylesheet" type="text/css" href="../../src/css/style.css"/>
                <link rel="stylesheet" type="text/css" href="../../src/css/fichas.css"/>
            </head>
            <body>
                <main>
                    <div id="pet-profiles">
                        <xsl:apply-templates select="fitxes_mascotes/mascota"/>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla per a cada mascota -->
    <xsl:template match="mascota">
        <div class="pet-profile">
            <div style="display:flex;align-items:center;">
                <xsl:if test="caracteristiques_fisiques/foto">
                    <img src="{caracteristiques_fisiques/foto}" alt="{nom_mascota}" class="pet-image" style="width:120px;height:120px;object-fit:cover;margin-right:20px;"/>
                </xsl:if>
                <div>
                    <h2 style="margin:0;">
                        <xsl:value-of select="nom_mascota"/>
                        <xsl:choose>
                            <xsl:when test="caracteristiques_fisiques/sexe/@valor='Mascle'">
                                <span style="font-size:1.2em;color:#4CAF50;">♂</span>
                            </xsl:when>
                            <xsl:when test="caracteristiques_fisiques/sexe/@valor='Femella'">
                                <span style="font-size:1.2em;color:#F39C12;">♀</span>
                            </xsl:when>
                        </xsl:choose>
                    </h2>
                    <div class="pet-details">
                        <p>
                            <strong>Color:</strong> <xsl:value-of select="caracteristiques_fisiques/color"/>
                        </p>
                        <p>
                            <strong>Tipo de cabello:</strong> <xsl:value-of select="caracteristiques_fisiques/tipus_cabell/@valor"/>
                        </p>
                        <p>
                            <strong>Edad:</strong> 
                            <xsl:value-of select="substring(2025 - substring(data_naixement, 7, 4), 1, 2)"/> anys
                        </p>
                        <xsl:if test="vacunacions/vacuna">
                            <p><strong>Última vacuna:</strong> <xsl:value-of select="vacunacions/vacuna[1]/nom_vacuna"/></p>
                        </xsl:if>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>