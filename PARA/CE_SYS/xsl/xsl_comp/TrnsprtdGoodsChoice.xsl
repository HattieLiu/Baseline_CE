<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="PurchsOrdrRef.xsl"/>
   <xsl:include href="BuyrDfndInf.xsl"/>
   <xsl:include href="SellrDfndInf.xsl"/>
	<xsl:template name="TrnsprtdGoodsChoice">
		<xsl:param name="TrnsprtdGoods"/>
		<xsl:param name="TrnsprtdGoods_parentName"/>
		<xsl:variable name="TrnsprtdGoods_name" select="name($TrnsprtdGoods)"/>
		<xsl:variable name="TrnsprtdGoods_pName" select="$TrnsprtdGoods_parentName"/>
		<xsl:variable name="TrnsprtdGoodsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TrnsprtdGoods_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
												<xsl:attribute name="type">checkbox</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="'Doc:TrnsprtdGoods'"/></xsl:attribute>
												<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
												<xsl:attribute name="tsu">N</xsl:attribute>
											</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TrnsprtdGoods_pName"/>_<xsl:value-of select="$TrnsprtdGoods_name"/>')</xsl:attribute>
					<xsl:value-of select="$TrnsprtdGoodsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TrnsprtdGoods_pName"/>_<xsl:value-of select="$TrnsprtdGoods_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="PurchsOrdrRef" select="$TrnsprtdGoods/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="PurchsOrdrRef">
							<xsl:with-param name="PurchsOrdrRef" select="$PurchsOrdrRef"/>
							<xsl:with-param name="PurchsOrdrRef_parentName">
								<xsl:value-of select="$TrnsprtdGoods_pName"/>_<xsl:value-of select="$TrnsprtdGoods_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BuyrDfndInf" select="$TrnsprtdGoods/Doc:BuyrDfndInf"/>
						<xsl:call-template name="BuyrDfndInf">
							<xsl:with-param name="BuyrDfndInf" select="$BuyrDfndInf"/>
							<xsl:with-param name="BuyrDfndInf_parentName">
								<xsl:value-of select="$TrnsprtdGoods_pName"/>_<xsl:value-of select="$TrnsprtdGoods_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="SellrDfndInf" select="$TrnsprtdGoods/Doc:SellrDfndInf"/>
						<xsl:call-template name="SellrDfndInf">
							<xsl:with-param name="SellrDfndInf" select="$SellrDfndInf"/>
							<xsl:with-param name="SellrDfndInf_parentName">
								<xsl:value-of select="$TrnsprtdGoods_pName"/>_<xsl:value-of select="$TrnsprtdGoods_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
