<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-nav gallery-tab">
            <div class="container">
                <div class="main-content">
                    <div class="content-item active" >
                        <div class="article-title-red-line">
                            <h2><xsl:value-of select="/NewsList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of></h2>
                        </div>
                        <div class="main-images">
                            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()&gt;0 and position()&lt;7">
            <xsl:if test="position()=1">
                <xsl:text disable-output-escaping="yes">&lt;div class='line-image' &gt;</xsl:text>
                <xsl:text disable-output-escaping="yes">&lt;div class='image-big' &gt;</xsl:text>
                <xsl:text disable-output-escaping="yes">&lt;div class='item' &gt;</xsl:text>
            </xsl:if>
             <xsl:if test="position()=2">
                <xsl:text disable-output-escaping="yes">&lt;div class='image-small' &gt;</xsl:text>
                <xsl:text disable-output-escaping="yes">&lt;div class='item' &gt;</xsl:text>
                
            </xsl:if>
            <xsl:if test="position()=3">
                <xsl:text disable-output-escaping='yes'>&lt;div class='item' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=4">
                <xsl:text disable-output-escaping='yes'>&lt;div class='line-image' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='image-small' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='item' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=5">
                <xsl:text disable-output-escaping='yes'>&lt;div class='item' &gt;</xsl:text>
            </xsl:if>



            <xsl:if test="position()=6">
                <xsl:text disable-output-escaping='yes'>&lt;div class='image-big' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='item' &gt;</xsl:text>
            </xsl:if>
            <div class="lightgallery">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="image">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <figcaption>
                            
                            <em class="mdi mdi-image"></em>
                            <div class="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                        </figcaption>
                    </figure>
                </a>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
                
               
            </div>
             <xsl:if test="position()=1">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=2">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=3">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=4">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            
            <xsl:if test="position()=5">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=6">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>