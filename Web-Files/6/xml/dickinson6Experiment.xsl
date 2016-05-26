<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="../../Web-Files/css/styles.css"/>
                <script type="text/javascript" src="../../Web-Files/scripts/dickinson.js"></script>
                <title>Emily Dickinson: Fascicle 16 | <xsl:value-of select="//idno"/></title>
            </head>
            <body>
                <div class="main">
                    <div class="header">
                        <h1 class="title"><a class="noShowLink" href="../../Web-Files/index.html"><span class="nameTitle">Emily Dickinson</span> <span class="siteTitle">: Fascicle 16</span></a></h1>
                        <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img class="cclic" alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a>
                    </div>
                    <div class="mwrapper">
                        <div class="menu">
                            <ul class="cfix">
                                <li><a href="../../Web-Files/index.html">Home</a></li>
                                <li><a href="../../Web-Files/about.html">About <span class="arrow">▼</span></a><ul class="sub">
                                    <li><a href="../../Web-Files/members.html">Our Members</a></li>
                                    <li><a href="../../Web-Files/methodology.html">Methodology</a></li>
                                </ul>
                                </li>
                                <li><a href="poems.html">Poems <span class="arrow">▼</span></a><ul class="sub">
                                    <li><a href="601.html">601</a></li>
                                    <li><a href="602.html">602</a></li>
                                    <li><a href="603.html">603</a></li>
                                    <li><a href="604.html">604</a></li>
                                    <li><a href="605.html">605</a></li>
                                    <li><a href="606.html">606</a></li>
                                    <li><a href="607.html">607</a></li>
                                    <li><a href="608.html">608</a></li>
                                    <li><a href="609.html">609</a></li>
                                    <li><a href="610.html">610</a></li>
                                    <li><a href="611.html">611</a></li>
                                    <li><a href="612.html">612</a></li>
                                    <li><a href="613.html">613</a></li>
                                    <li><a href="614.html">614</a></li>
                                    <li><a href="615.html">615</a></li>
                                    <li><a href="616.html">616</a></li>
                                    <li><a href="617.html">617</a></li>
                                </ul>
                                </li>
                                <li><a href="../../Web-Files/analysis.html">Analysis <span class="arrow">▼</span></a><ul class="sub">
                                    <li><a href="dash.html">Dash Usage Comparison</a></li>
                                    <li><a href="conclusion.html">Conclusion</a></li>
                                </ul>
                                </li>
                                <li><a href="../../Web-Files/contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="content">
                        <div class="side-nav">
                            <!-- Tests for existance of variants in the listWit element of each poem's XML-->
                            <button class="df6Key" id="df6Button">Fascicle 6</button>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems1')]">
                                <button class="poems1Key" id="poems1Button">1890 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems2')]">
                                <button class="poems2Key" id="poems2Button">1891 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems3')]">
                                <button class="poems3Key" id="poems3Button">1896 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'ce')]">
                                <button class="ceKey" id="ceButton">Centenary Edition</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'fh')]">
                                <button class="fhKey" id="fhButton">Final Harvest</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'bm')]">
                                <button class="bmKey" id="bmButton">Bolts of Melody</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'lSD')]">
                                <button class="lSDKey" id="lSDButton">Letter to Susan Dickinson</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'LETTER')]">
                                <button class="LETTERKey" id="LETTERButton">Letter from Emily Dickinson</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'D')]">
                                <button class="DKey" id="DButton">Dickinson</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'CP')]">
                                <button class="CPKey" id="CPButton">Complete Poems</button>
                            </xsl:if>
                            <a class="origXML" id="origXML" href="{//listRef/ptr/@target[contains(., 'xml')]}">View Original XML</a>
                            <button class="origImg" id="origImg">View Original Variant Images</button>
                            <p class="instruct"><strong>Instructions:</strong> You can turn the variations of the poem on and off at the same time. The button will
                            show as depressed, and the poems will load side by side. The images for the corresponding poem will stack on top of each other
                            if multiple variants are turned on at once.</p>
                            
                        </div>
                        <div class="poem">
                            <xsl:apply-templates select="//body"/>
                        </div>
                        <div class="poemImg">
                            
                        </div>
                    </div>
                    <div class="footer">
                        
                    </div>
                    <div id="imgModal" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">×</span>
                                <h2>Variant Poem Images</h2>
                            </div>
                            <div class="modal-body">
                                <xsl:for-each select="//listRef/ptr/@target[contains(., '.jpg') and not(contains(., 'Map'))]">
                                <div class="modalImgCont">
                                    <a target="_blank" href="{.}">
                                        <img src="{.}" alt="Poem {//idno} Variant Image"/>
                                    </a>
                                    <!-- Tests for existance of variant image files in the listRef element of each poem's XML-->
                                    <xsl:choose>
                                    <xsl:when test=".[contains(., 'fs') and not(contains(., 'a.') or contains(., 'b.') or contains(., 'c.'))]">
                                        <div class="modalDesc">Fascicle 6</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'fs') and contains(., 'a.')]">
                                        <div class="modalDesc">Fascicle 6 'A'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'fs') and contains(., 'b.')]">
                                        <div class="modalDesc">Fascicle 6 'B'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'fs') and contains(., 'c.')]">
                                        <div class="modalDesc">Fascicle 6 'C'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'poems1.')]">
                                        <div class="modalDesc">1890 Poems</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'poems2.')]">
                                        <div class="modalDesc">1891 Poems</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'poems3.')]">
                                        <div class="modalDesc">1896 Poems</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'ce.')]">
                                        <div class="modalDesc">Centenary Edition</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'cea.')]">
                                        <div class="modalDesc">Centenary Edition 'A'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'ceb.')]">
                                        <div class="modalDesc">Centenary Edition 'B'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'fh.')]">
                                        <div class="modalDesc">Final Harvest</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'fha.')]">
                                        <div class="modalDesc">Final Harvest 'A'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'fhb.')]">
                                        <div class="modalDesc">Final Harvest 'B'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'bm.')]">
                                        <div class="modalDesc">Bolts of Melody</div>
                                    </xsl:when>
                                        <xsl:when test=".[contains(., 'lSD.')]">
                                            <div class="modalDesc">Susan Dickinson Letter</div>
                                        </xsl:when>
                                    <xsl:when test=".[contains(., 'lSDa.')]">
                                        <div class="modalDesc">Susan Dickinson Letter 'A'</div>
                                    </xsl:when>
                                    <xsl:when test=".[contains(., 'lSDb.')]">
                                        <div class="modalDesc">Susan Dickinson Letter 'B'</div>
                                    </xsl:when>
                                        <xsl:when test=".[contains(., 'LETTER.')]">
                                            <div class="modalDesc">Letter from Emily Dickinson</div>
                                        </xsl:when>
                                        <xsl:when test=".[contains(., 'D.')]">
                                            <div class="modalDesc">Dickinson</div>
                                        </xsl:when>
                                        <xsl:when test=".[contains(., 'CP.')]">
                                            <div class="modalDesc">Complete Poems</div>
                                        </xsl:when>
                                        <xsl:when test=".[contains(., 'CPa.')]">
                                            <div class="modalDesc">Complete Poems 'A'</div>
                                        </xsl:when>
                                        <xsl:when test=".[contains(., 'CPb.')]">
                                            <div class="modalDesc">Complete Poems 'B'</div>
                                        </xsl:when>
                                    </xsl:choose>
                                </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="head">
        <h2>
            <span id="poem{//idno}">
                <xsl:apply-templates select="title"/>
            </span>
        </h2>
    </xsl:template>
    
    <xsl:template match="lg">
        <div class="para"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:for-each select=".">
            <span class="line">
                <span class="lineNum"><xsl:value-of select="count(preceding::l) + 1"/><xsl:text>: </xsl:text></span>
                <span class="lineContent">
                    <table>
                        <!--<xsl:if test="text()[1]">
                        <xsl:apply-templates select="text()[1]"/>
                    </xsl:if>-->
                    <!--<xsl:if test="app[1]/rdg[@wit/contains(., 'var0')]/text()">
                        <span class="var">VAR 1: </span><span class="df6"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., 'var0')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., 'var1')]/text()">
                        <span class="var">VAR 2: </span><span class="df6"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., 'var1')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., 'var2')]/text()">
                        <span class="var">VAR 3: </span><span class="df6"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., 'var2')]"/></span>
                    </xsl:if>-->
                    <!--<xsl:if test="app[1]/rdg[@wit/contains(., '#df6')]/text()">-->
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="df6"><xsl:if test="app[1]/rdg[@wit/contains(., '#df6')]/text()">
                                <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#df6')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="df6"><xsl:if test="app[2]/rdg[@wit/contains(., '#df6')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#df6')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="df6"><xsl:if test="app[3]/rdg[@wit/contains(., '#df6')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#df6')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                    <!--</xsl:if>-->
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems1"><xsl:if test="app[1]/rdg[@wit/contains(., '#poems1')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#poems1')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems1"><xsl:if test="app[2]/rdg[@wit/contains(., '#poems1')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#poems1')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems1"><xsl:if test="app[3]/rdg[@wit/contains(., '#poems1')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#poems1')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                    </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems2"><xsl:if test="app[1]/rdg[@wit/contains(., '#poems2')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#poems2')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems2"><xsl:if test="app[2]/rdg[@wit/contains(., '#poems2')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#poems2')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems2"><xsl:if test="app[3]/rdg[@wit/contains(., '#poems2')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#poems2')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems3"><xsl:if test="app[1]/rdg[@wit/contains(., '#poems3')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#poems3')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems3"><xsl:if test="app[2]/rdg[@wit/contains(., '#poems3')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#poems3')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="poems3"><xsl:if test="app[3]/rdg[@wit/contains(., '#poems3')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#poems3')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="ce"><xsl:if test="app[1]/rdg[@wit/contains(., '#ce')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., 'ce')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="ce"><xsl:if test="app[2]/rdg[@wit/contains(., '#ce')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#ce')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="ce"><xsl:if test="app[3]/rdg[@wit/contains(., '#ce')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#ce')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="fh"><xsl:if test="app[1]/rdg[@wit/contains(., '#fh')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#fh')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="fh"><xsl:if test="app[2]/rdg[@wit/contains(., '#fh')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#fh')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="fh"><xsl:if test="app[3]/rdg[@wit/contains(., '#fh')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#fh')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="bm"><xsl:if test="app[1]/rdg[@wit/contains(., '#bm')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#bm')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="bm"><xsl:if test="app[2]/rdg[@wit/contains(., '#bm')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#bm')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="bm"><xsl:if test="app[3]/rdg[@wit/contains(., '#bm')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#bm')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="lSD"><xsl:if test="app[1]/rdg[@wit/contains(., '#lSD')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#lSD')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="lSD"><xsl:if test="app[2]/rdg[@wit/contains(., '#lSD')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#lSD')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="lSD"><xsl:if test="app[3]/rdg[@wit/contains(., '#lSD')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#lSD')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="LETTER"><xsl:if test="app[1]/rdg[@wit/contains(., '#LETTER')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#LETTER')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="LETTER"><xsl:if test="app[2]/rdg[@wit/contains(., '#LETTER')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#LETTER')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="LETTER"><xsl:if test="app[3]/rdg[@wit/contains(., '#LETTER')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#LETTER')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="D"><xsl:if test="app[1]/rdg[@wit/contains(., '#D')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#D')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="D"><xsl:if test="app[2]/rdg[@wit/contains(., '#D')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#D')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="D"><xsl:if test="app[3]/rdg[@wit/contains(., '#D')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#D')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <xsl:if test="text()[1]">
                                    <xsl:apply-templates select="text()[1]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="CP"><xsl:if test="app[1]/rdg[@wit/contains(., '#CP')]/text()">
                                    <xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#CP')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[2]">
                                    <xsl:apply-templates select="text()[2]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="CP"><xsl:if test="app[2]/rdg[@wit/contains(., '#CP')]/text()">
                                    <xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#CP')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[3]">
                                    <xsl:apply-templates select="text()[3]"/>
                                </xsl:if>
                            </td>
                            <td>
                                <span class="CP"><xsl:if test="app[3]/rdg[@wit/contains(., '#CP')]/text()">
                                    <xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#CP')]"/>
                                </xsl:if></span>
                            </td>
                            <td>
                                <xsl:if test="text()[4]">
                                    <xsl:apply-templates select="text()[4]"/>
                                </xsl:if>
                            </td>
                        </tr>
            <!--
            
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#ce')]/text()">
                        <span class="ce"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#ce')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#fh')]/text()">
                        <span class="fh"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#fh')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#bm')]/text()">
                        <span class="bm"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#bm')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#lSD')]/text()">
                        <span class="lsd"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#lSD')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#LETTER')]/text()">
                        <span class="LETTER"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#LETTER')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#D')]/text()">
                        <span class="D"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#D')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[1]/rdg[@wit/contains(., '#CP')]/text()">
                        <span class="CP"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., '#CP')]"/></span>
                    </xsl:if>
                    <!-\-<xsl:if test="app[1]/rdg[@wit/contains(., 'var0')]/del[@rend/contains(., 'strikethrough')]/text()">
                        <span class="var">VAR 1: </span><span class="df6"><span class="strikethrough"><xsl:apply-templates select="app[1]/rdg[@wit/contains(., 'var0')]/del[@rend/contains(., 'strikethrough')]"/></span></span>
                    </xsl:if>-\->
                    <xsl:if test="text()[2]">
                        <xsl:apply-templates select="text()[2]"/>
                    </xsl:if>
                    <!-\-<xsl:if test="app[2]/rdg[@wit/contains(., 'var0')]/text()">
                        <span class="var">VAR 1: </span><span class="df16"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., 'var0')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., 'var1')]/text()">
                        <span class="var">VAR 2: </span><span class="df16"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., 'var1')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., 'var2')]/text()">
                        <span class="var">VAR 3: </span><span class="df16"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., 'var2')]"/></span>
                    </xsl:if>-\->
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#df6')]/text()">
                        <span class="df6"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#df6')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#poems1')]/text()">
                        <span class="poems1"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#poems1')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#poems2')]/text()">
                        <span class="poems2"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#poems2')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#poems3')]/text()">
                        <span class="poems3"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#poems3')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#ce')]/text()">
                        <span class="ce"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#ce')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#fh')]/text()">
                        <span class="fh"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#fh')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#bm')]/text()">
                        <span class="bm"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#bm')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#lSD')]/text()">
                        <span class="lsd"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#lSD')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#LETTER')]/text()">
                        <span class="LETTER"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#LETTER')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#D')]/text()">
                        <span class="D"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#D')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[2]/rdg[@wit/contains(., '#CP')]/text()">
                        <span class="CP"><xsl:apply-templates select="app[2]/rdg[@wit/contains(., '#CP')]"/></span>
                    </xsl:if>
                    <xsl:if test="text()[3]">
                        <xsl:apply-templates select="text()[3]"/>
                    </xsl:if>
                    <!-\-<xsl:if test="app[3]/rdg[@wit/contains(., 'var0')]/text()">
                        <span class="var">VAR 1: </span><span class="df16"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., 'var0')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., 'var1')]/text()">
                        <span class="var">VAR 2: </span><span class="df16"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., 'var1')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., 'var2')]/text()">
                        <span class="var">VAR 3: </span><span class="df16"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., 'var2')]"/></span>
                    </xsl:if>-\->
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#df6')]/text()">
                        <span class="df6"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#df6')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#poems1')]/text()">
                        <span class="poems1"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#poems1')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#poems2')]/text()">
                        <span class="poems2"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#poems2')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#poems3')]/text()">
                        <span class="poems3"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#poems3')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#ce')]/text()">
                        <span class="ce"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#ce')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#fh')]/text()">
                        <span class="fh"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#fh')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#bm')]/text()">
                        <span class="bm"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#bm')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#lSD')]/text()">
                        <span class="lsd"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#lSD')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#LETTER')]/text()">
                        <span class="LETTER"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#LETTER')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#D')]/text()">
                        <span class="D"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#D')]"/></span>
                    </xsl:if>
                    <xsl:if test="app[3]/rdg[@wit/contains(., '#CP')]/text()">
                        <span class="CP"><xsl:apply-templates select="app[3]/rdg[@wit/contains(., '#CP')]"/></span>
                    </xsl:if>
                    <xsl:if test="text()[4]">
                        <xsl:apply-templates select="text()[4]"/>
                    </xsl:if>--></table>
                </span>
            </span><br/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>