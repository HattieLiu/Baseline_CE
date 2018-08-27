<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="Replacement2.xsl"/>
	<xsl:include href="Deletion2.xsl"/>
	<xsl:include href="Addition2.xsl"/>
	<!--  *********** point <ComparisonResult2> start ********** -->
	<xsl:template name="ComparisonResult2">
		<xsl:param name="ComparisonResult2"/>
		<xsl:param name="ComparisonResult2_parent"/>
		<xsl:variable name="ComparisonResult2_name" select="name($ComparisonResult2)"/>
		<xsl:variable name="ComparisonResult2_pname" select="$ComparisonResult2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ComparisonResult2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtSeqNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ElmtSeqNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtPthDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ElmtPth'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ElmtNm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtSeqNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>_ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult2/ElmtSeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtPthDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult2/ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ComparisonResult2/ElmtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Addition2" select="$ComparisonResult2/Addtn"/>
						<xsl:call-template name="Addition2">
							<xsl:with-param name="Addition2" select="$Addition2"/>
							<xsl:with-param name="Addition2_parent">
								<xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Replacement2" select="$ComparisonResult2/Rplcmnt"/>
						<xsl:call-template name="Replacement2">
							<xsl:with-param name="Replacement2" select="$Replacement2"/>
							<xsl:with-param name="Replacement2_parent">
								<xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Deletion2" select="$ComparisonResult2/Deltn"/>
						<xsl:call-template name="Deletion2">
							<xsl:with-param name="Deletion2" select="$Deletion2"/>
							<xsl:with-param name="Deletion2_parent">
								<xsl:value-of select="$ComparisonResult2_pname"/>_<xsl:value-of select="$ComparisonResult2_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ComparisonResult2> end ********** -->
</xsl:stylesheet>
