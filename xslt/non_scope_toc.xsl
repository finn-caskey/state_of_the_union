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
                <link type="text/css" href="index.css" rel="stylesheet" />
            </head>
            
            
            <body>
                <h1>State of the Union Addresses</h1>
                <!--navbar-->
                <div id="navbar">
                    <div class="navbar">
                        <a href="/state_of_the_union/index.html">Home</a>
                        <div class="dropdown">
                            <button class="dropbtn">About</button>
                            <div class="dropdown-content">
                                <a href="/state_of_the_union/html/about.html">About the Project</a>
                                <a href="/state_of_the_union/html/team.html">Team</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">Original Texts</button>
                            <div class="dropdown-content">
                                <a href="/state_of_the_union/html/scope_toc.html">Project Scope (John F. Kennedy to George W. Bush)</a>
                                <a href="/state_of_the_union/html/non_scope_toc.html">All Addresses (George Washington to George W. Bush</a>
                            </div>
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">Analysis</button>
                            <div class="dropdown-content">
                                <a href="/state_of_the_union/html/graphs.html">Topic Reference Graphs By Mention</a>
                                <a href="/state_of_the_union/html/percentgraphs.html">Topic Reference Graphs By Percentage</a>
                                <a href="/state_of_the_union/html/speechlengthgraph.html">Average Address Length By President</a>
                                <a href="/state_of_the_union/html/discussion.html">Discussion</a>                       
                            </div>
                        </div>                
                    </div>
                </div>  
                <h1>United States Presidents' State of the Union Addresses</h1>
                
                
                
                <h2>Table of Contents</h2>
                <!--remove scope for all-->
                <ol><xsl:apply-templates select = "descendant::address" mode ="toc"/>
                </ol>
                <hr/>
                <!--remove scope for all-->
                <xsl:apply-templates select="descendant::address"/>
                
                <footer>
                    <br/>
                        <p><a href="https://creativecommons.org/licenses/by-sa/4.0/"><img src="/state_of_the_union/pics/cclicense.png" alt="state_of_the_union/pics/cclicense.png"></img></a></p>
                        <p><a href="https://github.com/finn-caskey/state_of_the_union">SOTU Team Github Here</a></p>
                        <br/>
                            <br/>
                </footer>
                
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
        <xsl:text> [Refs: </xsl:text><xsl:value-of select = "count(descendant::ref[@type])"/><xsl:text>]</xsl:text></li>    
    </xsl:template>
    
    <xsl:template match = "address">
        <!--topofpagebutton-->
        <a href="#top"><button id = "id{translate(child::date, ' ','_')}" type="button">Back to top of page</button></a>
        <h2><xsl:apply-templates select = "child::president"/></h2>
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