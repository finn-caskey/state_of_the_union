<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head><title>State of the Union</title></head>
            <body>
                
                <h1>State of the Union</h1>
                <h2>Table of Contents</h2>
                <ol>
                        <xsl:apply-templates select="//address" mode="toc"/>
                </ol>
                <hr/> 
               
                    <xsl:apply-templates select="//address"/>
                
                    </body>
                    </html>
    </xsl:template>
    
    <xsl:template match="address" mode="toc">
        <li>
            <strong><xsl:apply-templates select="descendant::president"/></strong>
        </li>
            </xsl:template>
    
    <xsl:template match="address">
        <h2>
            <xsl:apply-templates select="descendant::title"/>
        </h2>
        
        <xsl:apply-templates select="descendant::lg"/>
        
    </xsl:template>
    
    <xsl:template match="lg">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:value-of select="count(preceding::l) + 1"/><xsl:text>: </xsl:text><xsl:apply-templates/>
        <xsl:if test="following-sibling::l"><br/></xsl:if>
    </xsl:template>
    
    <xsl:template match="rdg">
        <span class="{@wit}"><xsl:apply-templates/></span>
    </xsl:template>
    
    
</xsl:stylesheet>  
