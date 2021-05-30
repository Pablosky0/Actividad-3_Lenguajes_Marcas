<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
            <head>
                <title><xsl:value-of select="ite/@nombre"/></title>
                <link rel="stylesheet" href="css/estilos.css"/>
            </head>
            <body>
                <div id="contenedor">
                    <header>
                    <a href="ite.xml" id="cabezera"><h1 align="center"><xsl:value-of select="ite/@nombre"/></h1></a>
                    </header>
                    <div id="informacion">
                        <h2>Sobre nosotros:</h2>
                        <p>Empresa: <xsl:value-of select="ite/empresa"/></p>
                        <p>Pagina web: <a href="https://institutotecnologico.edix.com"><xsl:value-of select="ite/@web"/></a></p>
                        <p>Telefono: <a href="+34 91 787 39 91"><xsl:value-of select="ite/telefono"/></a></p>
                        <p>Formulario: <a href="html/formulario.html">Formulario</a> </p>
                    </div>
                    <h2>Profesores:</h2>
                    <xsl:for-each select="ite/profesores/profesor">
                        <table id="profesores">
                            <tr>
                                <th>Profesor : <xsl:value-of select="id"/></th>
                            </tr>
                            <tr>
                                <th><xsl:value-of select="nombre"/></th>
                            </tr>

                        </table>
                    </xsl:for-each>
                    <div id="clear"></div>
                    <div id="lista1">
                    <h3>Director:</h3>
                    <ul>
                        <li>Nombre: <xsl:value-of select="ite/director/nombre"/></li>
                        <li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
                    </ul>
                    </div>
                    <div id="lista2">
                    <h3>Jefe de estudios:</h3>
                    <ul>
                        <li>Nombre: <xsl:value-of select="ite/jefe_estudios/nombre"/></li>
                        <li>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                    </ul>
                    </div>
                    <div id="clear"></div>
                    <h2>Ciclos:</h2>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <table id="ciclos">
                            <tr>
                                <th colspan="3"><xsl:value-of select="@id"/></th>
                            </tr>
                            <tr>
                                
                                <th><xsl:value-of select="nombre"/></th>
                                <th><xsl:value-of select="grado"/></th>
                                <th><xsl:value-of select="decretoTitulo/@anio"/></th>
                            </tr>

                        </table>
                    </xsl:for-each>
                    
                </div>
            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>