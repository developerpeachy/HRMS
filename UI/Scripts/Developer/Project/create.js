﻿(function () {
    var viewModel = new kendo.observable({
        id: 0,
        enhancementRequestId: 0,
        managerId: 0,
        start: new Date(),
        finish: new Date(),
        submitEnabled: true,
        submit: function () {
            debugger;
            this.set("submitEnabled", false);

            var data = kendo.stringify({
                EnhancementRequestId: this.get("enhancementRequestId"),
                ManagerId: this.get("managerId"),
                Start: this.get("start"),
                Finish: this.get("finish")
            });

            $.ajax({
                url: "/api/projectdevelopments/",
                type: "POST",
                dataType: "json",
                contentType: "application/json",
                data: data
            }).success(function (data, textStatus, jqXHR) {
                window.location.href = "/Development/ProjectManagement/";
            }).fail(function (jqXHR, textStatus, errorThrown) {

            }).always(function () {
                viewModel.set("submitEnabled", true);
            });
        }
    });

    $(function () {
        kendo.bind($("#project-form"), viewModel);

        var container = $("#project-form");

        container.find("input[name=\"EnhancementRequestId\"]").kendoDropDownList({
            dataSource: {
                transport: {
                    read: {
                        url: "/api/EnhancementRequest/EnhancementRequest",
                        type: "GET",
                        dataType: "json"
                    }
                }
            },
            dataValueField: "Id",
            dataTextField: "Description",
            optionLabel: "Select a Enhancement Request..."
        });

        container.find("input[name=\"ManagerId\"]").kendoDropDownList({
            dataSource: {
                transport: {
                    read: {
                        url: "/api/Development/Employees",
                        type: "GET",
                        dataType: "json"
                    }
                }
            },
            dataValueField: "Id",
            dataTextField: "LastName",
            valueTemplate: "#= LastName #, #= (data.FirstName) ? FirstName : '' #",
            optionLabel: "Select a Project Manager..."
        });

        container.find("input[name=\"Start\"]").kendoDatePicker({
        });

        container.find("input[name=\"Finish\"]").kendoDatePicker({
        });
    });
})();