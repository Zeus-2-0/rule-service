package com.brihaspathee.zeus.web.resource.impl;

import com.brihaspathee.zeus.constants.ApiResponseConstants;
import com.brihaspathee.zeus.dto.rules.RuleCategoryDto;
import com.brihaspathee.zeus.service.interfaces.RuleService;
import com.brihaspathee.zeus.web.resource.interfaces.RuleAPI;
import com.brihaspathee.zeus.web.response.ZeusApiResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 2:29 PM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.web.resource.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@RestController
@RequiredArgsConstructor
public class RuleAPIImpl implements RuleAPI {

    /**
     * Rule service instance
     */
    private final RuleService ruleService;

    /**
     * Get the rules by rule category and rule type
     * @param ruleCategoryName
     * @param ruleType
     * @return
     */
    @Override
    public ResponseEntity<ZeusApiResponse<RuleCategoryDto>> getRules(String ruleCategoryName, String ruleType) {
        RuleCategoryDto ruleCategoryDto = ruleService.getRules(ruleCategoryName,
                ruleType);
        ZeusApiResponse<RuleCategoryDto> response = ZeusApiResponse.<RuleCategoryDto>builder()
                .response(ruleCategoryDto)
                .timestamp(LocalDateTime.now())
                .message(ApiResponseConstants.SUCCESS)
                .developerMessage(ApiResponseConstants.SUCCESS_REASON)
                .statusCode(HttpStatus.OK.value())
                .status(HttpStatus.OK)
                .build();
        return ResponseEntity.ok(response);
    }
}
