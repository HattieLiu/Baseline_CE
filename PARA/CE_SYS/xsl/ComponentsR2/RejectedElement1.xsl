<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--  *********** point <RejectedElement1> start ********** -->
	<xsl:template name="RejectedElement1">
		<xsl:param name="RejectedElement1"/>
		<xsl:param name="RejectedElement1_parent"/>
		<xsl:variable name="RejectedElement1_name" select="name($RejectedElement1)"/>
		<xsl:variable name="RejectedElement1_pname" select="$RejectedElement1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$RejectedElement1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtSeqNbDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'ElmtSeqNb'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="IndvRjctnRsnDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'IndvRjctnRsn'"/>
		</xsl:call-template>
	</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RejectedElement1_pname"/>_<xsl:value-of select="$RejectedElement1_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$RejectedElement1_pname"/>_<xsl:value-of select="$RejectedElement1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtSeqNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RejectedElement1_pname"/>_<xsl:value-of select="$RejectedElement1_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RejectedElement1_pname"/>_<xsl:value-of select="$RejectedElement1_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RejectedElement1/ElmtSeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IndvRjctnRsnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RejectedElement1_pname"/>_<xsl:value-of select="$RejectedElement1_name"/>_IndvRjctnRsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RejectedElement1_pname"/>_<xsl:value-of select="$RejectedElement1_name"/>_IndvRjctnRsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RejectedElement1/IndvRjctnRsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RejectedElement1> end ********** -->
</xsl:stylesheet>
