using System.Data.Entity;

namespace ESFA.DC.Data.AppsEarningsHistory.Model.Interfaces
{
    public interface IApprenticeshipsEarningsHistory
    {
        DbSet<AppsEarningsHistory> AppsEarningsHistories { get; set; }
    }
}
