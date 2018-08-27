<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:template match="Doc:Document/Doc:tsmt.001.001.01/Doc:TxId">
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:attribute name="class">FieldName</xsl:attribute>
								<xsl:text>ID:</xsl:text>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">TxId_Id</xsl:attribute>
									<xsl:attribute name="id">TxId_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
	</xsl:template>
</xsl:stylesheet>
