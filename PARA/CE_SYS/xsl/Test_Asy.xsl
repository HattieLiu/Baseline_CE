<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<!--  ************************************************lastest***************************************************  -->
	<!--  *********** point <AckId> Start ********** -->
	<xsl:template match="MessageIdentification1">
		<xsl:param name="inNode"/>
	<!--	
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('AckId')</xsl:attribute>
					<xsl:text>AckId</xsl:text>
				</a>
			</xsl:element>
		</tr>
		-->
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id">AckId</xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;</xsl:attribute>
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
								<xsl:attribute name="style">width:150</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">AckId_ID</xsl:attribute>
									<xsl:attribute name="id">AckId_ID</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="current()/Doc:Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:150</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:attribute name="class">FieldName</xsl:attribute>
								<xsl:text>CreDtTm:</xsl:text>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">AckId_CreDtTm</xsl:attribute>
									<xsl:attribute name="id">AckId_CreDtTm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="current()/Doc:CreDtTm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AckId> end ********** -->

</xsl:stylesheet>
