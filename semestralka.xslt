<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    [
    <xsl:for-each select="nastaveni-klient/nastaveni-klientaPoPrihlaseni/uzivatelskeNastaveni/runy/pojmenovani">
      <xsl:sort select="poradi" order="descending"/>
      {
      "Pořadí": "<xsl:value-of select="poradi"/>",
      "Brnění": "<xsl:value-of select="atributy/brneni"/>",
      "Odolnost vůči magii": "<xsl:value-of select="atributy/odolnostMagii"/>",
      "Síla schopnosti": "<xsl:value-of select="atributy/silaSchopnosti"/>",
      "Životy": "<xsl:value-of select="atributy/zdravi"/>",
      }<xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>
    ]
  </xsl:template>
</xsl:stylesheet>