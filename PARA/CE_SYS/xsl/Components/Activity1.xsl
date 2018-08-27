<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <Activity1> start ********** -->
	<xsl:template name="Activity1">
		<xsl:param name="Activity1"/>
		<xsl:param name="Activity1_parent"/>
		<xsl:variable name="Activity1_name" select="name($Activity1)"/>
		<xsl:variable name="Activity1_pname" select="$Activity1_parent"/>
		
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Activity1_name"/>
			</xsl:call-template>
		</xsl:variable>
		
		<xsl:variable name="MsgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MsgNm'"/>
			</xsl:call-template>
		</xsl:variable>
       
       <xsl:variable name="DescDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Desc'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Activity1_pname"/>_<xsl:value-of select="$Activity1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Activity1_pname"/>_<xsl:value-of select="$Activity1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$MsgDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Activity1_pname"/>_<xsl:value-of select="$Activity1_name"/>_MsgNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Activity1_pname"/>_<xsl:value-of select="$Activity1_name"/>_MsgNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Activity1/Doc:MsgNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$DescDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Activity1_pname"/>_<xsl:value-of select="$Activity1_name"/>_Desc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Activity1_pname"/>_<xsl:value-of select="$Activity1_name"/>_Desc</xsl:attribute>
									<xsl:attribute name="class">W_70</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Activity1/Doc:Desc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Activity1> end ********** -->
</xsl:stylesheet>
