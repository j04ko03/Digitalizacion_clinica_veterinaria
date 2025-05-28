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
                <header>
                    <h1>Fitxes de Mascotes</h1>
                    <p>Descobreix les nostres adorables mascotes!</p>
                </header>
                <main>
                    <div id="pet-profiles">
                        <xsl:apply-templates select="petProfiles/pet"/>
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla per a cada mascota -->
    <xsl:template match="pet">
        <div class="pet-profile">
            <div style="display:flex;align-items:center;">
                <xsl:if test="image">
                    <img src="{image}" alt="{name}" class="pet-image" style="width:120px;height:120px;object-fit:cover;margin-right:20px;"/>
                </xsl:if>
                <div>
                    <h2 style="margin:0;">
                        <xsl:value-of select="name"/>
                        <xsl:choose>
                            <xsl:when test="type='Dog'">
                                <span style="font-size:1.2em;color:#4CAF50;">🐶</span>
                            </xsl:when>
                            <xsl:when test="type='Cat'">
                                <span style="font-size:1.2em;color:#F39C12;">🐱</span>
                            </xsl:when>
                            <xsl:when test="type='Fish'">
                                <span style="font-size:1.2em;color:#3498db;">🐟</span>
                            </xsl:when>
                            <xsl:otherwise>
                                <span style="font-size:1.2em;color:#888;">🐾</span>
                            </xsl:otherwise>
                        </xsl:choose>
                    </h2>
                    <div class="pet-details">
                        <p>
                            <strong>Tipo:</strong> <xsl:value-of select="type"/>
                            <xsl:if test="type='Dog' or type='Cat'">
                                <span style="margin-left:10px;padding:2px 8px;border-radius:10px;background:#eafaf1;color:#27ae60;font-size:0.9em;">¡Adoptable!</span>
                            </xsl:if>
                        </p>
                        <p><strong>Raza:</strong> <xsl:value-of select="breed"/></p>
                        <p>
                            <strong>Edad:</strong> <xsl:value-of select="age"/> anys
                            <xsl:if test="number(age) &lt; 2">
                                <span style="color:#27ae60;font-weight:bold;"> (¡Muy joven!)</span>
                            </xsl:if>
                        </p>
                        <xsl:if test="description">
                            <p style="font-style:italic;color:#555;"><xsl:value-of select="description"/></p>
                        </xsl:if>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>