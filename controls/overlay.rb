overlay_controls = input('overlay_controls')
system_categorization = input('system_categorization')

include_controls 'eks-cis-node-baseline' do

  ## NA due to the requirement not included in CMS ARS 5.0
  unless overlay_controls.empty?
    overlay_controls.each do |overlay_control|
      control overlay_control do
        impact 0.0
        desc "caveat", "Not applicable for this CMS ARS 5.0 overlay, since the requirement is not included in CMS ARS 5.0"
      end
    end
  end
end