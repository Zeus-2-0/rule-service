package com.brihaspathee.zeus.service.interfaces;

import com.brihaspathee.zeus.domain.entity.RuleCategory;
import com.brihaspathee.zeus.dto.rules.RuleCategoryDto;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 5:44 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.service.interfaces
 * To change this template use File | Settings | File and Code Template
 */
public interface RuleService {

    /**
     * Get all the rules for a specific category and type
     * @param ruleCategoryName
     * @param ruleType
     * @return
     */
    RuleCategoryDto getRules(String ruleCategoryName,
                             String ruleType);
}
