package com.brihaspathee.zeus.mapper.impl;

import com.brihaspathee.zeus.domain.entity.RuleCategory;
import com.brihaspathee.zeus.dto.rules.RuleCategoryDto;
import com.brihaspathee.zeus.mapper.interfaces.RuleCategoryMapper;
import com.brihaspathee.zeus.mapper.interfaces.RuleSetMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 5:24 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class RuleCategoryMapperImpl implements RuleCategoryMapper {

    /**
     * Rule set mapper instance to map all the rule sets
     */
    private final RuleSetMapper ruleSetMapper;

    /**
     * Convert rule category entity to rule category dto
     * @param ruleCategory
     * @return
     */
    @Override
    public RuleCategoryDto ruleCategoryToRuleCategoryDto(RuleCategory ruleCategory) {
        if(ruleCategory == null){
            return null;
        }
        RuleCategoryDto ruleCategoryDto = RuleCategoryDto.builder()
                .ruleCategoryId(ruleCategory.getRuleCategoryId())
                .ruleCategoryName(ruleCategory.getRuleCategoryName())
                .ruleCategoryDesc(ruleCategory.getRuleCategoryDesc())
                .ruleType(ruleCategory.getRuleType())
                .ruleSets(ruleSetMapper.ruleSetsToRuleSetDtos(ruleCategory.getRuleSets()))
                .build();
        return ruleCategoryDto;
    }

    /**
     * Convert rule category dto to entity
     * @param ruleCategoryDto
     * @return
     */
    @Override
    public RuleCategory ruleCategoryDtoToRuleCategory(RuleCategoryDto ruleCategoryDto) {
        if(ruleCategoryDto == null){
            return null;
        }
        RuleCategory ruleCategory = RuleCategory.builder()
                .ruleCategoryId(ruleCategoryDto.getRuleCategoryId())
                .ruleCategoryName(ruleCategoryDto.getRuleCategoryName())
                .ruleCategoryDesc(ruleCategoryDto.getRuleCategoryDesc())
                .ruleType(ruleCategoryDto.getRuleType())
                .ruleSets(ruleSetMapper.ruleSetDtosToRuleSets(ruleCategoryDto.getRuleSets()))
                .build();
        return ruleCategory;
    }

    /**
     * Convert rule category entities to dtos
     * @param ruleCategories
     * @return
     */
    @Override
    public List<RuleCategoryDto> ruleCategoriesToRuleCategoryDtos(List<RuleCategory> ruleCategories) {
        return ruleCategories.stream().map(this::ruleCategoryToRuleCategoryDto).collect(Collectors.toList());
    }

    /**
     * Convert rule category dtos to entities
     * @param ruleCategoryDtos
     * @return
     */
    @Override
    public List<RuleCategory> ruleCategoryDtosToRuleCategories(List<RuleCategoryDto> ruleCategoryDtos) {
        return ruleCategoryDtos.stream().map(this::ruleCategoryDtoToRuleCategory).collect(Collectors.toList());
    }
}
