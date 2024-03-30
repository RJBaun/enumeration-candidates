# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  candidate_with_id = candidates.find { |candidate| candidate.id == 5 }
  end
  
def experienced?(candidate)
  if candidate.years_of_experience >= true
    return true
  else 
    return false
end

def qualified_candidates(candidates)
  meets_criteria = cadidates.select do |candidate|
      experienced?(candidate) &&
      cadidate.github_points >= 100 &&
      candidate.languages.include?("Ruby") || candidate.languages.include?("Python")
      candidate.date_applied.shift <= 15.days.ago.to_date &&
      cadidate.age >= 18
    end
end
  
  # More methods will go below
def ordered_by_qualifications(candidates)
  candidates.sort_by do |candidate|
    [-candidate.years_of_experience, -candidate.github_points]
  end
end