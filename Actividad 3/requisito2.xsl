<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/ite">
    <itt>
        <xsl:attribute name="nombre"><xsl:value-of select="@nombre"/></xsl:attribute>
        <xsl:attribute name="empresa"><xsl:value-of select="empresa"/></xsl:attribute>
        <contacto>
            <web><xsl:value-of select="@web"/></web>
            <telefono><xsl:value-of select="telefono"/></telefono>
        </contacto>
        <equipo>
            <director>
                <xsl:attribute name="despacho"><xsl:value-of select="director/despacho"/></xsl:attribute>
                <nombre><xsl:value-of select="director/nombre"/> </nombre>
            </director>
            <jefe_estudios>
                <xsl:attribute name="despacho"><xsl:value-of select="jefe_estudios/despacho"/></xsl:attribute>
                <nombre><xsl:value-of select="jefe_estudios/nombre"/> </nombre>
            </jefe_estudios>
            <profesores>
                <xsl:for-each select="profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id"><xsl:value-of select="id"/></xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                    </profesor>
                </xsl:for-each>
            </profesores>
        </equipo>
        <oferta_academica>
            <xsl:for-each select="ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="nombre"><xsl:value-of select="nombre"/></xsl:attribute>
                    <siglas><xsl:value-of select="@id"/></siglas>
                    <tipo><xsl:value-of select="grado"/></tipo>
                    <titulo><xsl:value-of select="decretoTitulo/@anio"/></titulo>
                </ciclo>
        </xsl:for-each>
    </oferta_academica>
    </itt>
    </xsl:template>
</xsl:stylesheet>