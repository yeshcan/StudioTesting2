<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/1999/XSL/Tranform"
	xmlns:functx="https://www.functx.com/" xmlns:wd="urn:com.workday.report/Rahul_Test_Sec_1">
	<xsl:output method="xml" />
	<xsl:template match="wd:Report_Data">
		<root>
			<xsl:for-each select="wd:Report_Entry">
			<row>
				<Domain>
				<xsl:value-of select="wd:Domain/@wd:Descriptor"/>
				</Domain>
				<View>
				<xsl:for-each select="wd:View-Only_Security_Groups">
				<xsl:value-of select="./@wd:Descriptor"/>
				</xsl:for-each>
				</View>
				<Modify>
				<xsl:for-each select="wd:Modify_Security_Groups">
				<xsl:value-of select="./@wd:Descriptor"/>
				</xsl:for-each>
				</Modify>
				<Put>
				<xsl:for-each select="wd:Put_Security_Groups">
				<xsl:value-of select="./@wd:Descriptor"/>
				</xsl:for-each>
				</Put>
				<Get>
				<xsl:for-each select="wd:Get-Only_Security_Groups">
				<xsl:value-of select="./@wd:Descriptor"/>
				</xsl:for-each>
				</Get>
			</row>
			</xsl:for-each>
		</root>
	</xsl:template>
</xsl:stylesheet>