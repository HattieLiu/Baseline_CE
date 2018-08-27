<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <Quantity1> Start ********** -->
	<xsl:template name="Quantity1">
		<xsl:param name="Quantity1"/>
		<xsl:variable name="Quantity1_name" select="name($Quantity1)"/>

		<xsl:variable name="QtyDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Qty'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="ValDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Val'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="UnitOfMeasrCdDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:UnitOfMeasrCd'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="OthrUnitOfMeasrDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:OthrUnitOfMeasr'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="FctrDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Fctr'"/>
		</xsl:call-template>
	</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Quantity1_name"/>')</xsl:attribute>
					<xsl:value-of select="$QtyDesc"/>
				</a>
			</xsl:element>
		</tr>
		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>	
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:for-each select="$Quantity1">
										<xsl:if test="Doc:UnitOfMeasrCd != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:value-of select="$UnitOfMeasrCdDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="Quantity1_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Quantity1_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:UnitOfMeasrCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_UnitOfMeasrCd_check</xsl:attribute>
									<xsl:for-each select="$Quantity1">
										<xsl:if test="Doc:OthrUnitOfMeasr != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:value-of select="$OthrUnitOfMeasrDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="Quantity1_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Quantity1_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:OthrUnitOfMeasr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>							
						</tr>
						<tr>
							<xsl:element name="TD">	
							</xsl:element>
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$ValDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_Val</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_Val</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:Val"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
							</xsl:element>
							<xsl:element name="TD">								
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$FctrDesc"/>
							</xsl:element>
							<xsl:element name="TD">	
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Quantity1_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Quantity1_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Quantity1/Doc:Fctr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Quantity1> end ********** -->
	</xsl:stylesheet>