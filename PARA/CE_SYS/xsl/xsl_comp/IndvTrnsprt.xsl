<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="TrnsprtByAir.xsl"/>
    <xsl:include href="TrnsprtBySea.xsl"/>
    <xsl:include href="TrnsprtByRoad.xsl"/>
    <xsl:include href="TrnsprtByRail.xsl"/>
	<xsl:template name="IndvTrnsprt">
		<xsl:param name="IndvTrnsprt"/>
		<xsl:param name="IndvTrnsprt_parentName"/>
		<xsl:variable name="IndvTrnsprt_name" select="name($IndvTrnsprt)"/>
		<xsl:variable name="IndvTrnsprt_pName" select="name($IndvTrnsprt_parentName)"/>
		<xsl:variable name="IndvTrnsprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$IndvTrnsprt_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$IndvTrnsprt_pName"/>_check</xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$IndvTrnsprt_pName"/>_Doc:IndvTrnsprt</xsl:attribute>
					<xsl:attribute name="txs"><xsl:value-of select="$IndvTrnsprt_pName"/>_Doc:MltmdlTrnsprt</xsl:attribute>
					<xsl:attribute name="onClick">radioCheck_layer()</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$IndvTrnsprt_pName"/>_<xsl:value-of select="$IndvTrnsprt_name"/>')</xsl:attribute>
					<xsl:value-of select="$IndvTrnsprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$IndvTrnsprt_pName"/>_<xsl:value-of select="$IndvTrnsprt_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
					<xsl:for-each select="$IndvTrnsprt/Doc:TrnsprtByAir">
						<xsl:variable name="TrnsprtByAir" select="."/>
						<xsl:call-template name="TrnsprtByAir">
							<xsl:with-param name="TrnsprtByAir" select="$TrnsprtByAir"/>
							<xsl:with-param name="TrnsprtByAir_parentName">
								<xsl:number value="position()" /><xsl:value-of select="$IndvTrnsprt_pName"/>_<xsl:value-of select="$IndvTrnsprt_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$IndvTrnsprt/Doc:TrnsprtBySea">
						<xsl:variable name="TrnsprtBySea" select="."/>
						<xsl:call-template name="TrnsprtBySea">
							<xsl:with-param name="TrnsprtBySea" select="$TrnsprtBySea"/>
							<xsl:with-param name="TrnsprtBySea_parentName">
								<xsl:number value="position()" /><xsl:value-of select="$IndvTrnsprt_pName"/>_<xsl:value-of select="$IndvTrnsprt_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$IndvTrnsprt/Doc:TrnsprtByRoad">
						<xsl:variable name="TrnsprtByRoad" select="."/>
						<xsl:call-template name="TrnsprtByRoad">
							<xsl:with-param name="TrnsprtByRoad" select="$TrnsprtByRoad"/>
							<xsl:with-param name="TrnsprtByRoad_parentName">
								<xsl:number value="position()" /><xsl:value-of select="$IndvTrnsprt_pName"/>_<xsl:value-of select="$IndvTrnsprt_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$IndvTrnsprt/Doc:TrnsprtByRail">
						<xsl:variable name="TrnsprtByRail" select="."/>
						<xsl:call-template name="TrnsprtByRail">
							<xsl:with-param name="TrnsprtByRail" select="$TrnsprtByRail"/>
							<xsl:with-param name="TrnsprtByRail_parentName">
								<xsl:number value="position()" /><xsl:value-of select="$IndvTrnsprt_pName"/>_<xsl:value-of select="$IndvTrnsprt_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
