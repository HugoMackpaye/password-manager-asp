<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountEdit.aspx.cs" Inherits="user_AccountEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<script language="javascript" type="text/javascript" src="../Generator.js"></script>

<div class="form-group">
            <label class="col-sm-2 control-label">Password Generator</label>
            <div class="col-sm-10">
                <p class="form-control-static">
                    <div class="checkbox">
                        <label><input type="checkbox" value="" id="lowerLetters" checked>Lower Letters</label>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value="" id="upperLetters" checked>Upper Letters</label>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value="" id="numbers" checked>Numbers</label>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value="" id="specialChars">Special Characters</label>
                    </div>              
                    <div>
                        <label for="inputPasswordLength">Length</label>
                        <input type="number" id="inputPasswordLength" placeholder="16" value="16" min="{#maxlengthAccountGeneratorMin#}" max="{#maxlengthAccountGeneratorMax#}" />
                    </div>
                    <div>
                        <button type="button" class="btn btn-primary" onclick="generatePassword()"><span class="glyphicon glyphicon-refresh"></span> Generate</button>
                    </div>
                    <div id="generator-result" class="generator-result">
                        <label for="inputGenerated">Generated</label><input type="text" id="inputGenerated" disabled="true" />
                        <button type="button" class="btn btn-success" onclick="applyPassword()"><span class="glyphicon glyphicon-ok"></span> Apply</button>
                    </div>
                </p>
            </div>
        </div>

        </asp:Content>