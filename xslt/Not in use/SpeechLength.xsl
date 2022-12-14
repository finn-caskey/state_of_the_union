<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match = "/">
        <html>
            
            <head>
                <title>United States Presidents' State of the Union Addresses</title>
                <link rel="stylesheet" href="/SOTU_Addresses/html-css/index.css"/>
            </head>
            
            
            <body>
                <h1>State of the Union Addresses</h1>
                <div id="navbar">
                    <div class="navbar">
                        <a href="/SOTU_Addresses/index.xhtml">Home</a>
                        <div class="dropdown">
                            <button class="dropbtn">About</button>
                            <div class="dropdown-content">
                                <a href="/SOTU_Addresses/html-css/team.html">Team</a>
                                <a href="/SOTU_Addresses/html-css/purpose.html">Purpose</a>
                                <a href="/SOTU_Addresses/html-css/method.html">Methodology</a>
                            </div>
                        </div>           
                        <a href="/SOTU_Addresses/html-css/page.html">Text</a>
                        <div class="dropdown">
                            <button class="dropbtn">Analysis</button>
                            
                        </div>                
                    </div>
                </div>
                <h1>United States Presidents' State of the Union Addresses</h1>
                <h2>Speech Length</h2>
                
                
                <table>
                    <tr>
                        <th>
                            President
                        </th>
                        <th>
                            Speech Count
                        </th>
                        <th>
                            Average Length
                        </th>
                    </tr>
                <xsl:for-each-group select = "//address" group-by = "president">
                    <tr>                       
                     <td><xsl:apply-templates select = "president"/></td>
                     <td><xsl:value-of select = "count(current-group())"/></td>
                        <td><xsl:value-of select = "round(string-length(string-join(current-group())) div count(current-group()))"/></td>
                    </tr>
                </xsl:for-each-group>
                </table>
                
            </body>
            
        </html>
    </xsl:template>
    <!--
    <xsl:template match = "p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match = "address" mode = "toc">
        <li><a href="#id{translate(child::date,' ', '_')}"><strong><xsl:apply-templates select = "child::president"/>
            <xsl:text>: </xsl:text>
            <xsl:apply-templates select="child::date"/></strong></a>
            <xsl:text> [Refs: </xsl:text><xsl:value-of select = "count(descendant::ref[@type])"/><xsl:text>]</xsl:text></li>    
    </xsl:template>
    
    <xsl:template match = "address">
        <h2 id = "id{translate(child::date, ' ','_')}"><xsl:apply-templates select = "child::president"/></h2>
        <h3><xsl:apply-templates select = "child::date"/></h3>
        <xsl:apply-templates select="descendant::p"/>
    </xsl:template>
    
    <xsl:template match = "ref[@type = 'civil rights']">
        <span class = "civil rights"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match = "ref[@type = 'economy']">
        <span class = "economy"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match = "ref[@type = 'diplomacy']">
        <span class = "diplomacy"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match = "ref[@type = 'povery']">
        <span class = "poverty"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match = "ref[@type = 'war']">
        <span class = "war"><xsl:apply-templates/></span>
    </xsl:template>
    -->
</xsl:stylesheet>