package com.brihaspathee.zeus.web.resource.interfaces;

import com.brihaspathee.zeus.dto.rules.RuleCategoryDto;
import com.brihaspathee.zeus.web.model.WelcomeDto;
import com.brihaspathee.zeus.web.response.ZeusApiResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 2:25 PM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.web.resource.interfaces
 * To change this template use File | Settings | File and Code Template
 */
@RequestMapping("/api/v1/zeus/rules")
@Validated
public interface RuleAPI {

    /**
     * Get the rules associated with the rule category and rule type
     * @return
     */
    @Operation(
            operationId = "Get Rules by category and type",
            method = "GET",
            description = "Get Rules by category and type",
            tags = {"rules"}
    )
    @ApiResponses(
            value = {
                    @ApiResponse(
                            responseCode = "200",
                            description = "Successfully retrieved the Rules",
                            content = {
                                    @Content(mediaType = MediaType.APPLICATION_JSON_VALUE, schema = @Schema(implementation = RuleCategoryDto.class))
                            }
                    )
            }
    )
    @GetMapping("/{ruleCategoryName}/{ruleType}")
    ResponseEntity<ZeusApiResponse<RuleCategoryDto>> getRules(@PathVariable String ruleCategoryName,
                                                              @PathVariable String ruleType);
}
