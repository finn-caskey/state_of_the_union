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
                <!--navbar-->
                <div id="navbar">
                    <div class="navbar">
                        <ul>
                            <li><a href="/state_of_the_union/index.html">Home</a></li>
                            <li><a href="/state_of_the_union/html/about.html">About</a></li>
                            <li><a href="/state_of_the_union/html/scope_toc.html">Addresses from John F. Kennedy to George W. Bush</a></li>
                            <li><a href="/state_of_the_union/html/non_scope_toc.html">All Addresses</a></li>
                            <li><a href="/state_of_the_union/html/graphs.html">Topic Reference Graphs By Mention</a></li>
                            <li><a href="/state_of_the_union/html/percentgraphs.html">Topic Reference Graphs By Percentage</a></li>
                            <li><a href="/state_of_the_union/html/speechlengthgraph.html">Average Address Length By President</a></li>
                        </ul>
                    </div>
                </div>
                <h1>United States Presidents' State of the Union Addresses</h1>
                
                <div id="fieldset">
                    <fieldset>
                        <legend>Click to Highlight:</legend>
                        <input type="checkbox" id="wartoggle" style="cursor:pointer"></input><span class="war">War</span>
                        <br></br>
                        <input type="checkbox" id="diplomacytoggle" style="cursor:pointer"></input><span class="diplomacy">Diplomacy</span>
                        <br></br>
                        <input type="checkbox" id="economytoggle" style="cursor:pointer"></input><span class="economy">Economy</span>
                        <br></br>
                        <input type="checkbox" id="socialtoggle" style="cursor:pointer"></input><span class="social">Social</span>
                        <br></br>
                        <input type="checkbox" id="religiontoggle" style="cursor:pointer"></input><span class="religion">Religion</span>
                        <br></br>
                    </fieldset>
                </div>
                
                <h2>Table of Contents</h2>
                <!--remove scope for all-->
                <ol><xsl:apply-templates select = "descendant::scope/address" mode ="toc"/>
                </ol>
                <hr/>
                <!--remove scope for all-->
                <xsl:apply-templates select="descendant::scope/address"/>
                
            </body>
            
        </html>
    </xsl:template>
    
    <xsl:template match = "p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match = "address" mode = "toc">
        <li><a href="#id{translate(child::date,' ', '_')}"><strong><xsl:apply-templates select = "child::president"/>
            <xsl:text>: </xsl:text>
        <xsl:apply-templates select="child::date"/></strong></a>
        <xsl:text> [Refs: </xsl:text><xsl:value-of select = "count(descendant::topic[@type])"/><xsl:text>]</xsl:text></li>    
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
    
    <xsl:template match = "ref[@type = 'poverty']">
        <span class = "poverty"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match = "ref[@type = 'war']">
        <span class = "war"><xsl:apply-templates/></span>
    </xsl:template>
    
</xsl:stylesheet>